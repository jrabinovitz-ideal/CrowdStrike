$pcs = import-csv C:\CS_Install\pcs.txt


$installcommand = "C:\Windows\system32\cmd.exe /c C:\Windows\Temp\WindowsSensor.MaverickGyr.exe /install /quiet /norestart CID=DA6D654EF23B4B51968579E0C20DFFA6-55"

$pcs.Name | foreach {
if ((Test-Path "\\$_\c$\WINDOWS\Temp\")){

copy-item -force C:\CS_Install\WindowsSensor.MaverickGyr.exe \\$_\c$\WINDOWS\Temp\
([WMICLASS]"\\$_\Root\CIMV2:Win32_Process").create($installcommand) | Out-Null
Write-Host "$_ installed successfully"
}
else {
Write-Host "$_ not available"
}
}
