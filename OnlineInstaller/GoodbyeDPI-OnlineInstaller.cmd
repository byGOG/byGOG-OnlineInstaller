@ECHO OFF
SETLOCAL

REM Set the name and version of the tool
SET "NAME=GoodbyeDPI"
SET "VERSION="
TITLE %NAME% Online Installer

REM Get the latest version number from GitHub
curl -sL https://github.com/ValdikSS/GoodbyeDPI/releases/latest | findstr /C:"GoodbyeDPI v" > %TEMP%\version.txt
FOR /F "tokens=6 delims=<> " %%G IN (%TEMP%\version.txt) DO SET "VERSION=%%G"
SET "VERSION=%VERSION:v=%"

SET "URL=https://github.com/ValdikSS/GoodbyeDPI/releases/download/%VERSION%/goodbyedpi-%VERSION%.zip"

REM Create a folder to store the downloaded tool
ECHO ---------------------------------------------------
ECHO Creating folder...
mkdir "%SYSTEMDRIVE%\tools"

REM Download the tool from the URL
ECHO Downloading %NAME%: %VERSION%
curl -# -L -o "%SYSTEMDRIVE%\tools\GoodbyeDPI.zip" "%URL%"

REM Extract the downloaded zip file to the tool folder
ECHO Extracting files...
powershell Expand-Archive -LiteralPath '%SYSTEMDRIVE%\tools\GoodbyeDPI.zip' -DestinationPath "%SYSTEMDRIVE%\tools" -Force

REM Create a shortcut on the desktop
ECHO Creating a shortcut on the desktop.
set "BaseDir=%SystemDrive%\tools"
for /d %%D in ("%BaseDir%\goodbyedpi-*") do set "GoodbyeDpiDir=%%D"
POWERSHELL; Start-Process cmd -ArgumentList '/c mklink %PUBLIC%\Desktop\GoodbyeDPI.lnk %GoodbyeDpiDir%\2_any_country_dnsredir.cmd' -WindowStyle Hidden -Verb RunAs -Wait

ECHO Cleaning temporary files...
DEL %SYSTEMDRIVE%\tools\GoodbyeDPI.zip
DEL %TEMP%\version.txt

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------


