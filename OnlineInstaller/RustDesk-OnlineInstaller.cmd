@ECHO OFF
SET "OUTPUT=RustDesk.msi"
SET "NAME=RustDesk"
TITLE %NAME% Online Installer

curl -sL https://github.com/rustdesk/rustdesk/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=3 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G

SET "URL=https://github.com/rustdesk/rustdesk/releases/download/%VERSION%/rustdesk-%VERSION%-x86_64.msi"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
    curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
    POWERSHELL; Start-Process cmd -ArgumentList '/c start /wait msiexec /i "%TEMP%\%OUTPUT%" /quiet /norestart' -WindowStyle Hidden -Verb RunAs -Wait
      
ECHO Cleaning temporary files...
    DEL %TEMP%\%OUTPUT%
    DEL %TEMP%\version*

ECHO Closing %NAME%...
    POWERSHELL -Command "Start-Process cmd -Args '/c TASKKILL /IM RustDesk.exe /F /T' -Verb RunAs -WindowStyle Hidden"

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------
