@echo off
SETLOCAL

SET OUTPUT=GoogleDrive.exe
SET NAME=Google Drive
TITLE %NAME% Online Installer

SET MY_URL=https://dl.google.com/drive-file-stream/GoogleDriveSetup.exe

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% %MY_URL%

ECHO Installing %NAME%...
start /wait %TEMP%\%OUTPUT% --silent --desktop_shortcut

ECHO Window minimized or closing %NAME%...
ping 127.0.0.1 -n 6 > nul
powershell -Command "Get-Process GoogleDriveFS | ForEach-Object { $_.CloseMainWindow() }"

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------