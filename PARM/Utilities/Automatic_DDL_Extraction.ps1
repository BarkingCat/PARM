# Developer: Aaron Jackson
# Date: 30/06/2014

# TODO
# 1. turn into a function in a module
# 2. parameterise
# 3. call for each database after build to update source control

#$ServerName='AA124003\SQLEXPRESS'
#qrm_control_poc

#### PARAMETERS ####
[string]$DB_Server = '121.217.16.179' #NVRMND-PC or 121.217.16.179
[string]$DB_Name = 'PARM_Control'
[string]$DB_User = 'neo' #set up application username and password
[string]$DB_Password = 'trust.08'#make account read only, must use procs to change data

$ServerName='NVRMND-PC'# the server it is on
$Database='PARM_Control' # the name of the database you want to script as objects
$DirectoryToSaveTo="C:\Users\Aaron\Documents\GitHub\PARM\SQL\$Database" # the directory where you want to store them

# Load SMO assembly, and if we're running SQL 2008 DLLs load the SMOExtended and SQLWMIManagement libraries
$v = [System.Reflection.Assembly]::LoadWithPartialName( 'Microsoft.SqlServer.SMO')
if ((($v.FullName.Split(','))[1].Split('='))[1].Split('.')[0] -ne '9') {
    [System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SMOExtended') | out-null
}
[System.Reflection.Assembly]::LoadWithPartialName('Microsoft.SqlServer.SmoEnum') | out-null

set-psdebug -strict # catch a few extra bugs
$ErrorActionPreference = "stop"
$My='Microsoft.SqlServer.Management.Smo'
$srv = new-object ("$My.Server") $ServerName # attach to the server
if ($srv.ServerType-eq $null) # if it managed to find a server
   {
   Write-Error "Sorry, but I couldn't find Server '$ServerName' "
   return
}
$scripter = new-object ("$My.Scripter") $srv # create the scripter
$scripter.Options.ToFileOnly = $true

# we now get all the object types except extended stored procedures
# first we get the bitmap of all the object types we want
$all =[long] [Microsoft.SqlServer.Management.Smo.DatabaseObjectTypes]::all `
    -bxor [Microsoft.SqlServer.Management.Smo.DatabaseObjectTypes]::ExtendedStoredProcedure

# and we store them in a datatable
$d = new-object System.Data.Datatable

# get everything except the servicebroker object, the information schema and system views
$d=$srv.databases[$Database].EnumObjects([long]0x1FFFFFFF -band $all) | `
    Where-Object {$_.Schema -ne 'sys'-and $_.Schema -ne "information_schema" -and $_.DatabaseObjectTypes -ne 'ServiceBroker'}

# and write out each scriptable object as a file in the directory you specify
$d| FOREACH-OBJECT { # for every object we have in the datatable.
   $SavePath="$($DirectoryToSaveTo)\$($_.DatabaseObjectTypes)"
   # create the directory if necessary (SMO doesn't).
   if (!( Test-Path -path $SavePath )) # create it if not existing
        {Try { New-Item $SavePath -type directory | out-null }
        Catch [system.exception]{
            Write-Error "error while creating '$SavePath' $_"
            return
         }
    }
    # tell the scripter object where to write it
    $scripter.Options.Filename = "$SavePath\$($_.name -replace '[\\\/\:\.]','-').sql";
    # Create a single element URN array
    $UrnCollection = new-object ('Microsoft.SqlServer.Management.Smo.urnCollection')
    $URNCollection.add($_.urn)
    # and write out the object to the specified file
    $scripter.script($URNCollection)
}

Write-Host "$Database on $ServerName has been written to $DirectoryToSaveTo"