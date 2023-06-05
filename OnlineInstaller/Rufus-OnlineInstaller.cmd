@ECHO OFF
SETLOCAL

REM Set the name and version of the tool
SET "NAME=Rufus"
SET "VERSION="
TITLE %NAME% Online Installer

REM Get the latest version number from GitHub
curl -sL https://rufus.ie/en/ | findstr /C:"rufus-" > %TEMP%\version.txt
FOR /F "tokens=7 delims=<> " %%G IN (%TEMP%\version.txt) DO SET "VERSION=%%G"
set version=%version:_arm64.exe=%
set version=%version:rufus-=%

REM Set the download URL based on the processor architecture
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    SET "URL=https://github.com/pbatard/rufus/releases/download/v%VERSION%/rufus-%VERSION%.exe"
) ELSE (
    SET "URL=https://github.com/pbatard/rufus/releases/download/v%VERSION%/rufus-%VERSION%_x86.exe"
)

REM Create a folder to store the downloaded tool
ECHO ---------------------------------------------------
echo Creating folder...
mkdir "%SYSTEMDRIVE%\tools\%NAME%"

REM Download the tool from the URL
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o "%SYSTEMDRIVE%\tools\%NAME%\%NAME%.exe" "%URL%"

REM Create a shortcut on the desktop
ECHO Creating a shortcut on the desktop.
POWERSHELL Start-Process cmd -ArgumentList '/c mklink "%PUBLIC%\Desktop\%NAME%.lnk" "%SYSTEMDRIVE%\tools\%NAME%\%NAME%.exe"' -WindowStyle Hidden -Verb RunAs -Wait

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------