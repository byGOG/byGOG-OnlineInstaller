@ECHO OFF
SETLOCAL

REM Set the name and version of the tool
SET "OUTPUT=DesktopRuntime.exe"
SET "NAME=.NET Desktop Runtime 6.0"
SET "VERSION="
TITLE %NAME% Online Installer

REM Set the download URL based on the processor architecture
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    SET "URL=https://aka.ms/dotnet/6.0/windowsdesktop-runtime-win-x64.exe"
) ELSE (
    SET "URL=https://aka.ms/dotnet/6.0/windowsdesktop-runtime-win-x86.exe"
)

ECHO ---------------------------------------------------
REM Download the tool from the URL
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
start /wait %TEMP%\%OUTPUT% /install /quiet /norestart

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------