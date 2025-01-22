Set-ExecutionPolicy -ExecutionPolicy Unrestricted

New-Item -Path "c:\windows\temp" -Name "CrowdStrike_Installer" -ItemType "directory"

Invoke-WebRequest -UseBasicParsing -Uri "https://ii.files.idealcloud.net/core/downloadfile?disposition=attachment&filename=cs_installer.zip&filepath=%2FSHARED%2F%21AJNTLj3nTsKXsn9GHQoFpQ0QhVX0W2A%2FBBST_TOOLS%2Fcs_installer.zip&redirect=1" `
-UserAgent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:134.0) Gecko/20100101 Firefox/134.0" `
-Headers @{
"Accept" = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"
  "Accept-Language" = "en-US,en;q=0.5"
  "Accept-Encoding" = "gzip, deflate, br, zstd"
  "Referer" = "https://ii.files.idealcloud.net/ui/core/index.html?mode=public&shareto="
  "Upgrade-Insecure-Requests" = "1"
  "Sec-Fetch-Dest" = "document"
  "Sec-Fetch-Mode" = "navigate"
  "Sec-Fetch-Site" = "same-origin"
  "Sec-Fetch-User" = "?1"
  "Priority" = "u=0, i"
} --Outfile "c:\windows\temp\CrowdStrike_Installer\cs_installer.zip"

Expand-Archive -LiteralPath 'c:\windows\temp\CrowdStrike_Installer\cs_installer.zip' -DestinationPath c:\windows\temp\CrowdStrike_Installer\

#$CS_CID = Get-Content "c:\windows\temp\CrowdStrike_Installer\cs_installer\cid.txt"

Invoke-Command -ScriptBlock {c:\windows\temp\CrowdStrike_Installer\cs_installer\FalconSensor_Windows.exe /install /quiet /norestart CID=5FAEAD9A775E44CCB8432A53C6C38EF2-46}
