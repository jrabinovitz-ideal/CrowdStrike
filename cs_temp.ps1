$CS_CID = Get-Content "c:\windows\temp\CrowdStrike_Installer\cid.txt"

Invoke-Command -ScriptBlock {c:\windows\temp\CrowdStrike_Installer\FalconSensor_Windows.exe /install /quiet /norestart CID=$CS_CID}
