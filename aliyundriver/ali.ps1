mkdir C:\Users\webdav
Invoke-WebRequest -Uri https://downloads.rclone.org/v1.59.1/rclone-v1.59.1-windows-amd64.zip -OutFile C:\Users\webdav\rclone.zip
Expand-Archive -Path "C:\Users\webdav\rclone.zip" -DestinationPath "C:\Users\webdav" -Confirm
Invoke-WebRequest -Uri https://github.com/gylang/aliyundriver-webdav-software-ui/archive/refs/heads/master.zip -OutFile C:\Users\webdav\aliyun.zip
Invoke-WebRequest -Uri https://github.com/messense/aliyundrive-webdav/releases/download/v1.10.1/aliyundrive-webdav-v1.10.1.x86_64-pc-windows-msvc.zip -OutFile C:\Users\webdav\aliwebdav.zip
Expand-Archive -Path "C:\Users\webdav\aliyun.zip" -DestinationPath "C:\Users\webdav" -Confirm
Expand-Archive -Path "C:\Users\webdav\aliwebdav.zip" -DestinationPath "C:\Users\webdav" -Confirm
Move-Item C:\Users\webdav\aliyundriver-webdav.exe C:\Users\webdav\aliyundriver-webdav-software-ui-master\bin\aliyundriver-webdav.exe
Start-Process C:\Users\webdav\aliyundriver-webdav-software-ui-master\aliyundriver-webdav.exe
Start-Process -FilePath https://www.aliyundrive.com/
cmd /c "C:\Users\webdav\rclone-v1.59.1-windows-amd64\rclone.exe config && C:\Users\webdav\rclone-v1.59.1-windows-amd64\rclone.exe mount webdav:/ V: --vfs-cache-mode writes"
