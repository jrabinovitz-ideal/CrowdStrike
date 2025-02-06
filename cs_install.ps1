New-Item -Path "c:\windows\temp" -Name "CrowdStrike_Installer" -ItemType "directory"

Invoke-WebRequest -UseBasicParsing -Uri "https://ii.files.idealcloud.net/core/downloadfile?disposition=attachment&filename=cs_installer.zip&filepath=%2Fjrabinovitz%2FMCKM%2Fcs_installer.zip&redirect=1" `
-WebSession $session `
-UserAgent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:134.0) Gecko/20100101 Firefox/134.0" `
-Headers @{
"Accept" = "*/*"
  "Accept-Language" = "en-US,en;q=0.5"
  "Accept-Encoding" = "gzip, deflate, br, zstd"
  "Referer" = "https://ii.files.idealcloud.net/ui/core/index.html"
  "Sec-Fetch-Dest" = "empty"
  "Sec-Fetch-Mode" = "cors"
  "Sec-Fetch-Site" = "same-origin"
  "Priority" = "u=0"
} -Outfile "c:\windows\temp\CrowdStrike_Installer\cs_installer.zip"

Expand-Archive -LiteralPath 'c:\windows\temp\CrowdStrike_Installer\cs_installer.zip' -DestinationPath c:\windows\temp\CrowdStrike_Installer\

$CS_CID = Get-Content "c:\windows\temp\CrowdStrike_Installer\cs_installer\cid.txt"

Invoke-Command -ScriptBlock {c:\windows\temp\CrowdStrike_Installer\cs_installer\FalconSensor_Windows.exe /install /quiet /norestart CID=$CS_CID}
