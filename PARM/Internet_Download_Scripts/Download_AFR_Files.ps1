#######
# Information
#######

# Version: 0.1
# Developer: Aaron Jackson
# Date: 14/04/2015
# Desc: This script will download files from the download queue in PARM

## TEST
# .\Download_AFR_Files.ps1 -System_Name "ASX" -FileID 2
##

################ VARIABLES #################
Param (
    [String]
    [Parameter(Mandatory = $true)] 
    $System_Name,
    
    [INT]
    [Parameter(Mandatory = $true)] 
    $FileID  
)
################ END VARIABLES #################

#Use only syntax compatible with version 4.
Set-StrictMode -version 4

#######
# CONSTANTS
#######
[string]$DB_Server = 'NVRMND-PC' #NVRMND-PC or parm.barkingcat.com.au,666
[string]$DB_Name = 'PARM_Control'

#######
# FUNCTIONS
#######
function GetHTTPFile
{
param(
	[string]
	[ValidateNotNull()]
	$Url,
	[string]
	[ValidateNotNull()]
	$LocalPath
	)

    # Check file exists - if exists delete
    Write-Output "Attemping to download $LocalPath"

    $Wget = New-Object System.Net.WebClient
    $Wget.DownloadFile($Url, $LocalPath)

	Write-Output "$LocalPath downloaded"

    #Check success -- http code?
    # verify files exists

}

#############################
## START PROGRAM           ##
## THIS IS THE ENTRY POINT ##
#############################
try{
	#Get SystemID from SystemName;

	$SystemID = 0
    $RunID = 0

    # Query PARM to populate these variables
    $sql = "SELECT [Control].[GetSystemID]('$System_Name') as [SystemID];"

    # Create and open a database connection
    $sqlConnection = new-object System.Data.SqlClient.SqlConnection "server=$DB_Server;database=$DB_Name;Integrated Security=sspi"
    
    $sqlConnection.Open()
    #Create a command object
    $sqlCommand = $sqlConnection.CreateCommand()
    $sqlCommand.CommandText = $sql
    #Execute the Command
    $sqlReader = $sqlCommand.ExecuteReader()
    #Parse the records
    while ($sqlReader.Read()) 
    {
	    $SystemID = $sqlReader["SystemID"]
    } 
	$sqlConnection.Close()

    # Query PARM to populate these variables
    $sql = "EXEC [Control].[Get_FileDownloadMetadata] @SystemID = $SystemID, @FileID = $FileID;" # This needs a system ID to be passed in, and perhaps a file ID

    # Create and open a database connection
    $sqlConnection = new-object System.Data.SqlClient.SqlConnection "server=$DB_Server;database=$DB_Name;Integrated Security=sspi"
    
    $sqlConnection.Open()
    #Create a command object
    $sqlCommand = $sqlConnection.CreateCommand()
    $sqlCommand.CommandText = $sql
    #Execute the Command
    $sqlReader = $sqlCommand.ExecuteReader()
    #Parse the records

    while ($sqlReader.Read()) 
    {
        $FileID = $sqlReader["FileID"] 
        $Url = $sqlReader["SourceURI"] + $sqlReader["FileName"]
        $LocalPath = $sqlReader["TargetURI"] + $sqlReader["FileName"]
        $RunID = $sqlReader["RunID"] 

		GetHTTPFile -Url $Url -LocalPath $LocalPath
    }

    # Close the database connection
    $sqlConnection.Close()
    
   
    If($RunID -ne 0)
    {
        
        #Update PARM with success -> Move this to a function
        $sqlConnection.Open()
        $sql = "EXEC [Control].[Set_DownloadStatus] @RunID = $RunID, @FileID = $FileID, @StatusCode = 2"
        $sqlCommand = $sqlConnection.CreateCommand()
        $sqlCommand.CommandText = $sql
        $sqlCmd = $sqlCommand.ExecuteNonQuery()
        $sqlConnection.Close()
    }

}
catch {

    Write-Output "Error detected. Code exiting.." #-backgroundcolor black -foregroundcolor red
    $sqlConnection.Close()

    If($RunID -ne 0)
    {
        # Update PARM with Error
        $sqlConnection.Open()
        $sql = "EXEC [Control].[Set_DownloadStatus] @RunID = $RunID, @FileID = $FileID, @StatusCode = -1"
        $sqlCommand = $sqlConnection.CreateCommand()
        $sqlCommand.CommandText = $sql
        $sqlCmd = $sqlCommand.ExecuteNonQuery()
        $sqlConnection.Close()
    }

    Write-Output $Error #-backgroundcolor black -foregroundcolor red

    Write-Output $_.Exception.ToString() #-backgroundcolor black -foregroundcolor red

}