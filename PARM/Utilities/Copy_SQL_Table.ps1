################### DESCRIPTION ###########
## DEVELOPER: AARON JACKSON
## DATE: 08/04/2015
## DESC: This script will create SQL insert scripts
################## END DESCRIPTION ########

## TEST
# .\Copy_SQL_Table.ps1 -SrcServer "EQ3DBS05" -SrcDatabase "Dimensional" -SrcTable "[Dimension].[Day]" -DestServer "EQ3WNPRDBDW01" -Truncate
##

################ VARIABLES #################
 
  Param ( 
      [parameter(Mandatory = $true)]  
      [string] $SrcServer, 
      [parameter(Mandatory = $true)]  
      [string] $SrcDatabase, 
      [parameter(Mandatory = $true)]  
      [string] $SrcTable, 
      [parameter(Mandatory = $true)]  
      [string] $DestServer, 
      [string] $DestDatabase,
      [string] $DestTable,
      [switch] $Truncate 
  ) 
 
  Function ConnectionString([string] $ServerName, [string] $DbName)  
  { 
    "Data Source=$ServerName;Initial Catalog=$DbName;Integrated Security=True;Application Name=PowerShell;Packet Size=32767"
  } 
 
 
  ########## Main body ############
  $sw = [Diagnostics.Stopwatch]::StartNew()
    
  If ($DestDatabase.Length –eq 0) { 
    $DestDatabase = $SrcDatabase 
  } 
 
  If ($DestTable.Length –eq 0) { 
    $DestTable = $SrcTable 
  } 
 
  If ($Truncate) {
    Write-Host "Truncating Table..."  
    $TruncateSql = "TRUNCATE TABLE " + $DestTable 
    Sqlcmd -S $DestServer -d $DestDatabase -Q $TruncateSql 
  } 
 
  Write-Host "Reading source table..."
  $SrcConnStr = ConnectionString $SrcServer $SrcDatabase 
  $SrcConn  = New-Object System.Data.SqlClient.SQLConnection($SrcConnStr) 
  $CmdText = "SELECT * FROM " + $SrcTable + " WITH (NOLOCK);"
  $SqlCommand = New-Object system.Data.SqlClient.SqlCommand($CmdText, $SrcConn)   
  $SrcConn.Open() 
  [System.Data.SqlClient.SqlDataReader] $SqlReader = $SqlCommand.ExecuteReader() 
 
  Try 
  { 
    Write-Host "Writing data to destination table..."
    $DestConnStr = ConnectionString $DestServer $DestDatabase 
    $bulkCopy = New-Object Data.SqlClient.SqlBulkCopy($DestConnStr, [System.Data.SqlClient.SqlBulkCopyOptions]::KeepIdentity) 
    $bulkCopy.DestinationTableName = $DestTable
    $bulkCopy.BatchSize = 100000 # write 100,000 records at a time
    $bulkCopy.BulkCopyTimeout = 0 #no timeout
    $bulkCopy.WriteToServer($sqlReader) 
  } 
  Catch [System.Exception] 
  { 
    $ex = $_.Exception 
    Write-Host $ex.Message 
  } 
  Finally 
  {
    Write-Host "Table $SrcTable in $SrcDatabase database on $SrcServer has been copied to table $DestTable in $DestDatabase database on $DestServer"
    $SqlReader.close() 
    $SrcConn.Close() 
    $SrcConn.Dispose() 
    $bulkCopy.Close()
    $sw.Stop()
    Write-Host "Elapsed Time:" $sw.Elapsed.ToString() 
  } 