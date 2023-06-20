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

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------