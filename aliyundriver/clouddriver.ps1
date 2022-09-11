Invoke-WebRequest -Uri http://yd.downxia.com/down/zlybnbdyp.rar -OutFile C:\Users\webdav\clouddrive.rar
Install-Module -Name 7Zip4Powershell
Expand-7Zip -ArchiveFileName C:\Users\webdav\cloudrive.rar -TargetPath C:\Users\webdav
Start-Process C:\Users\webdav\zlybnbdyp\CloudDrive_1.1.63_64bit_Setup.exe
Start-Process -FilePath https://www.aliyundrive.com/
