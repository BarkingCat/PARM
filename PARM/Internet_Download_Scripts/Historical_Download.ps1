#######
# Information
#######

# Version: 0.1
# Developer: Aaron Jackson
# Date: 13/06/2015
# Desc: This script will call the download script in a loop

## TEST
# .\Historical_Download.ps1
##

$i = 0

while ($i -le 1)
{
    
    Write-Host "Iteration $i"

	.\Download_AFR_Files.ps1 -System_Name "AFR" -Frequency "D"

	$i++
}