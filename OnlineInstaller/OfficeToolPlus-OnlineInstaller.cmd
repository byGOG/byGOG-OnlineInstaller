@ECHO OFF
SETLOCAL

REM Set the name and version of the tool
SET "NAME=Office Tool Plus"
SET "VERSION="
TITLE %NAME% Online Installer

REM Get the latest version number from GitHub
curl -sL https://github.com/YerongAI/Office-Tool/releases/latest | findstr /C:"Office Tool Plus v" > %TEMP%\version.txt
FOR /F "tokens=8 delims=<> " %%G IN (%TEMP%\version.txt) DO SET "VERSION=%%G"

REM Set the download URL based on the processor architecture
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    SET "URL=https://github.com/YerongAI/Office-Tool/releases/download/%VERSION%/Office_Tool_%VERSION%_x64.zip"
) ELSE (
    SET "URL=https://github.com/YerongAI/Office-Tool/releases/download/%VERSION%/Office_Tool_%VERSION%_x86.zip"
)

REM Create a folder to store the downloaded tool
ECHO ---------------------------------------------------
echo Creating folder...
mkdir "%SYSTEMDRIVE%\tools"

REM Download the tool from the URL
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o "%SYSTEMDRIVE%\tools\Office_Tool.zip" "%URL%"

REM Extract the downloaded zip file to the tool folder
ECHO Extracting files...
powershell Expand-Archive -LiteralPath '%SYSTEMDRIVE%\tools\Office_Tool.zip' -DestinationPath "%SYSTEMDRIVE%\tools" -Force

REM Create a shortcut on the desktop
ECHO Creating a shortcut on the desktop.
POWERSHELL Start-Process cmd -ArgumentList '/c mklink "%PUBLIC%\Desktop\OfficeToolPlus.lnk" "%SYSTEMDRIVE%\tools\OFFICE~1\OFFICE~2.EXE"' -WindowStyle Hidden -Verb RunAs -Wait

ECHO Cleaning temporary files...
DEL %SYSTEMDRIVE%\tools\Office_Tool.zip
DEL %TEMP%\version.txt

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10