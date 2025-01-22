Invoke-WebRequest -UseBasicParsing -Uri "https://ii.files.idealcloud.net/core/downloadfile?disposition=attachment&filename=windows_test_latest_x64.msi&filepath=%2FSHARED%2F%21AJNTLj3nTsKXsn9GHQoFpQ0QhVX0W2A%2FBBST_TOOLS%2FCortex%2Fwindows_test_latest_x64.msi&redirect=1" `
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
} -Outfile "c:\windows\temp\windows_test_latest_x64.msi"
