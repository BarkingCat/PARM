# Add to source control
# Add description
Clear-Host

# Download this file
# http://www.afr.com/rw/AFR/Web/Tables/Share_Tables_Daily/2015-03-28/GGsoda150328.csv

[string]$DB_Server = 'parm.barkingcat.com.au' #NVRMND-PC or 121.217.16.179
[string]$DB_Name = 'PARM_Control'
[string]$DB_User = 'neo' #set up application username and password
[string]$DB_Password = 'trust.08'#make account read only, must use procs to change data

try{

# check local path is valid

    # Get RunID
    #$RunID = 1


    #while ($RunID -le 201)
    #{

        # Query PARM to populate these variables
        $sql = "EXEC [Control].[Get_FileDownloadMetadata]"

        # Create and open a database connection
        #$sqlConnection = new-object System.Data.SqlClient.SqlConnection "server=$DB_Server;database=$DB_Name;Integrated Security=sspi"
        $sqlConnection = new-object System.Data.SqlClient.SqlConnection "server=$DB_Server;database=$DB_Name;User Id=$DB_User;Password=$DB_Password;"
    
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
        }

        # Close the database connection
        $sqlConnection.Close()

        # Check file exists - if exists delete

        $Wget = New-Object System.Net.WebClient
        $Wget.DownloadFile($Url, $LocalPath)

        #Check success -- http code?
        # verify files exists

        Write-Host "$LocalPath downloaded"

        #Update PARM with success
        $sqlConnection.Open()
        $sql = "EXEC [Control].[Set_DownloadStatus] @RunID = $RunID, @FileID = $FileID, @StatusCode = 2"
        $sqlCommand = $sqlConnection.CreateCommand()
        $sqlCommand.CommandText = $sql
        $sqlCmd = $sqlCommand.ExecuteNonQuery()
        $sqlConnection.Close()

        #$RunID++

    #}

}
catch {

    Write-Host "Error detected. Code exiting.." -backgroundcolor black -foregroundcolor red

    # Output all errors to console

    # Update PARM with Error

    Write-Host $Error -backgroundcolor black -foregroundcolor red

    Write-Host $_.Exception.ToString() -backgroundcolor black -foregroundcolor red

}
