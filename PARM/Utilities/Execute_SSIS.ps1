################### DESCRIPTION ###########
## DEVELOPER: AARON JACKSON
## DATE: 08/07/2014
## DESC: This script is used to call DTEXEC with the correct switches and params
## Needs to be run on a server (or PC) with SSIS Server installed.
## THIS WILL NOT WORK ON YOUR DESKTOP! Sorry folks!
################## END DESCRIPTION ########

## TEST
# .\Execute_SSIS.ps1 -Package_Dir "C:\Users\nvrmnd\BitTorrent Sync\Sync\Barking_Cat\PARM\SSIS\"  -Package_Name Acquisition_AFR_Daily.dtsx
##

################ VARIABLES #################
Param (
    [String]
    [ValidateScript({Test-Path $_ -PathType 'Container'})]
    [Parameter(Mandatory = $true)] 
    $Package_Dir,
    
    [String]
    [ValidateSet("Acquisition_AFR_Daily.dtsx")]
    [Parameter(Mandatory = $true)] 
    $Package_Name
    
)
################ END VARIABLES #################

################ SCRIPT ########################

    Clear-Host



    ## this will change depending on package.
    $DTExecArgs  = "/FILE ""$Package_Dir$Package_Name"" /CHECKPOINTING OFF  /REPORTING EW"
    
    # write-host $DTExecArgs
    # Run DTExec

    $pinfo = New-Object System.Diagnostics.ProcessStartInfo
    If ($Architecture -eq "64")
    {
        $pinfo.FileName = "C:\Program Files\Microsoft SQL Server\100\DTS\Binn\DTExec.exe"
    }
    Else
    {
        $pinfo.FileName = "C:\Program Files (x86)\Microsoft SQL Server\100\DTS\Binn\DTExec.exe"
    }
    $pinfo.FileName  # Output the DTExec path and filename
    $DTExecArgs      # Output the DTExecArgs variable

    # The next few lines are required to make sure the process waits for
    # the package execution to finish
    $pinfo.RedirectStandardOutput = $true
    $pinfo.UseShellExecute = $false
    $pinfo.Arguments = $DTExecArgs
    $p = New-Object System.Diagnostics.Process
    $p.StartInfo = $pinfo
    $p.Start() | Out-Null
    $output = $p.StandardOutput.ReadToEnd()
    $p.WaitForExit()
    $DTExecExitCode = $p.ExitCode
    $output
    # DTExec Finished

    Write-Output "Return Code = $DTExecExitCode"
    Exit $Result
    
################ END SCRIPT ####################