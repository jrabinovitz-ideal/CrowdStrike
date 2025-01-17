Set-ExecutionPolicy -ExecutionPolicy Unrestricted

New-Item -Path "c:\windows\temp" -Name "CrowdStrike_Installer" -ItemType "directory"

Invoke-WebRequest -Uri 'https://github.com/jrabinovitz-ideal/CrowdStrike/raw/refs/heads/main/cs_installer.zip' -Outfile "c:\windows\temp\CrowdStrike_Installer\cs_installer.zip"

Expand-Archive -LiteralPath 'c:\windows\temp\CrowdStrike_Installer\cs_installer.zip' -DestinationPath c:\windows\temp\CrowdStrike_Installer\

$CS_CID = Get-Content "c:\windows\temp\CrowdStrike_Installer\cid.txt"

Invoke-Command -ScriptBlock {c:\windows\temp\CrowdStrike_Installer\FalconSensor_Windows.exe /install /quiet /norestart CID=$CS_CID}
