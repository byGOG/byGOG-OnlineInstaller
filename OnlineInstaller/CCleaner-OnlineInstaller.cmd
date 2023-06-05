@echo off
setlocal

set OUTPUT=ccsetup.exe
set NAME=CCleaner
set URL=https://download.ccleaner.com/ccsetup.exe
set WINAPP2_URL=https://raw.githubusercontent.com/MoscaDotTo/Winapp2/master/Winapp2.ini

TITLE %NAME% Online Installer

echo Downloading %NAME%...
curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

echo Installing %NAME%...
start /wait %TEMP%\%OUTPUT% /S

echo Installing Winapp2...
curl -# -L -o "%TEMP%\Winapp2.ini" %WINAPP2_URL%
POWERSHELL; Start-Process cmd -ArgumentList '/c xcopy /y /f %TEMP%\Winapp2.ini %SYSTEMDRIVE%\PROGRA~1\CCleaner\' -WindowStyle Hidden -Verb RunAs -Wait

echo Cleaning temporary files...
del %TEMP%\%OUTPUT%
del %TEMP%\Winapp2.ini

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------