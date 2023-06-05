@ECHO OFF
SETLOCAL
SET OUTPUT=AnyDesk.exe
SET NAME=AnyDesk
TITLE %NAME% Online Installer

SET MY_URL=https://download.anydesk.com/AnyDesk.exe

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% %MY_URL%

ECHO Installing %NAME%...
POWERSHELL; Start-Process cmd -ArgumentList '/c %TEMP%\AnyDesk.exe --install "%SYSTEMDRIVE%\PROGRA~2\AnyDesk" --create-shortcuts --create-desktop-icon --silent' -WindowStyle Hidden -Verb RunAs -Wait

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------
