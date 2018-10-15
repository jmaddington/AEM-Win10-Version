#Get UDF field to write to
$udf = If ($env:udf -eq $null ) {"Custom3"} Else {$env:udf}

#Get current Windows version
$ver = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ReleaseId

#Current version to stdout
write-host $ver

#write to UDF
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\CentraStage /v $udf /t REG_SZ /d $ver /f