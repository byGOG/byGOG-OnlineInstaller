@ECHO OFF
SET "OUTPUT=BraveBrowser.exe"
SET "NAME=Brave Browser"
TITLE %NAME% Online Installer

curl -sL https://github.com/brave/brave-browser/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=4 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G

SET "URL=https://github.com/brave/brave-browser/releases/download/%VERSION%/BraveBrowserStandaloneSilentSetup.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
    curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
    start /wait %TEMP%\%OUTPUT%
      
ECHO Cleaning temporary files...
    DEL %TEMP%\%OUTPUT%
    DEL %TEMP%\version*

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------