certutil.exe -f -urlcache "https://ii.files.idealcloud.net/core/downloadfile?disposition=attachment&filename=FalconSensor_Windows.exe&filepath=%2FSHARED%2F%21AxN0LK34T7KgsC9PHxospH0HhcX7WP8%2Fg5fU3jRKeAyXeMyu%2FFalconSensor_Windows.exe&redirect=1" C:\windows\temp\FalconSensor_Windows.exe

Invoke-Command -ScriptBlock {c:\windows\temp\FalconSensor_Windows.exe /install /quiet /norestart CID=5FAEAD9A775E44CCB8432A53C6C38EF2-46}
