################### DESCRIPTION ###########
## DEVELOPER: AARON JACKSON
## DATE: 08/04/2015
## DESC: This script will create SQL insert scripts
################## END DESCRIPTION ########

## TEST
# .\Generate_Data_SQL_Script.ps1 -Output_Dir "D:\Temp\" -Server_Env "POC"
##

################ VARIABLES #################
Param (
    [String]
    [ValidateScript({Test-Path $_ -PathType 'Container'})]
    [Parameter(Mandatory = $true)] 
    $Output_Dir,
    
    [String]
    [ValidateSet("POC")]
    [Parameter(Mandatory = $true)] 
    $Server_Env
)
################ END VARIABLES #################


################ SCRIPT ########################

    Clear-Host
    
    Write-Host "Script Starting"

    Switch ($Server_Env)
    {
        "POC" {
                $server = "Localhost"
                $dbnames = @("PARM_Control", "PARM_Staging")
                #$schema = "Dimension"
              }
    }

    [System.Reflection.Assembly]::LoadWithPartialName("Microsoft.SqlServer.SMO") | out-null

    $SMOserver = New-Object ('Microsoft.SqlServer.Management.Smo.Server') -argumentlist $server

    foreach ($dbname in $dbnames)
    {
        Write-Host "Enumerating $dbname"
    
        $db = $SMOserver.databases[$dbname]
     
        $Objects = $db.Tables #| Where-object {$_.schema -eq $schema}  
     
        foreach ($ScriptThis in $Objects | where {!($_.IsSystemObject)}) 
        {
            
            $SavePath = $Output_Dir + $ScriptThis.Schema + "." + $ScriptThis.Name + ".sql"
            Write-Host "Writing output to $SavePath"      
            if(Test-Path $SavePath) {Remove-Item $SavePath}

            $ScriptData = new-object ('Microsoft.SqlServer.Management.Smo.Scripter') ($SMOserver)

            $ScriptData.Options.AppendToFile = $True
            $ScriptData.Options.ScriptSchema = $False
            $ScriptData.Options.ScriptData = $True
            $ScriptData.Options.ToFileOnly = $True
            $ScriptData.Options.NoCommandTerminator = $True
            $ScriptData.Options.FileName = $SavePath
             
            #$ScriptData.Script($ScriptThis)
            # Output the script
            foreach ($s in $ScriptData.EnumScript($ScriptThis)) { write-host $s }
            
            #Progress Update
        }
        

    }
    
    Write-Host "Script Complete"