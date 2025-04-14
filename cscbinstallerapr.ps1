New-Item -Path "c:\windows\temp" -Name "CrowdStrike_Installer" -ItemType "directory"

Invoke-WebRequest -UseBasicParsing -Uri "https://ii.files.idealcloud.net/core/downloadfile?disposition=attachment&filename=install.zip&filepath=%2FSHARED%2F%21AxN8LO38TBKIs49PHHospj0HhgX3WPv%2FKdCeOIMCKC8SiUJX%2Finstall.zip&redirect=1" `
-UserAgent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:137.0) Gecko/20100101 Firefox/137.0" `
-Headers @{
"Accept" = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
  "Accept-Language" = "en-US,en;q=0.5"
  "Accept-Encoding" = "gzip, deflate, br, zstd"
  "DNT" = "1"
  "Sec-GPC" = "1"
  "Referer" = "https://ii.files.idealcloud.net/ui/core/index.html?mode=public&shareto="
  "Upgrade-Insecure-Requests" = "1"
  "Sec-Fetch-Dest" = "document"
  "Sec-Fetch-Mode" = "navigate"
  "Sec-Fetch-Site" = "same-origin"
  "Sec-Fetch-User" = "?1"
  "Priority" = "u=0, i"
} -Outfile "c:\windows\temp\CrowdStrike_Installer\cs_installer.zip"

Expand-Archive -LiteralPath 'c:\windows\temp\CrowdStrike_Installer\cs_installer.zip' -DestinationPath c:\windows\temp\CrowdStrike_Installer\

$CS_CID = Get-Content "c:\windows\temp\CrowdStrike_Installer\install\cid.txt"

Invoke-Command -ScriptBlock {c:\windows\temp\CrowdStrike_Installer\install\FalconSensor_Windows.exe /install /quiet /norestart CID=$CS_CID}
