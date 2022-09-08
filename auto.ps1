mkdir C:\Users\webdav
Invoke-WebRequest -Uri https://app.raidrive.com/d86ea6fa40f74010914976063f94774b/setup/RaiDriveSetup.exe -OutFile C:\Users\webdav\raidrive.exe
Start-Process C:\Users\webdav\raidrive.exe /S -NoNewWindow -Wait -PassThru 
Invoke-WebRequest -Uri https://github.com/gylang/aliyundriver-webdav-software-ui/archive/refs/heads/master.zip -OutFile C:\Users\webdav\aliyun.zip
Invoke-WebRequest -Uri https://github.com/messense/aliyundrive-webdav/releases/download/v1.10.1/aliyundrive-webdav-v1.10.1.x86_64-pc-windows-msvc.zip -OutFile C:\Users\webdav\aliwebdav.zip
Expand-Archive -Path "C:\Users\webdav\aliyun.zip" -DestinationPath "C:\Users\webdav" -Confirm
Expand-Archive -Path "C:\Users\webdav\aliwebdav.zip" -DestinationPath "C:\Users\webdav" -Confirm
Start-Process C:\Users\webdav\aliyundriver-webdav.exe
Start-Process C:\Program Files\OpenBoxLab\RaiDrive\RaiDrive.exe
