@ECHO OFF
SET "OUTPUT=OpenHashTab.exe"
SET "NAME=OpenHashTab"
TITLE %NAME% Online Installer

curl -sL https://github.com/namazso/OpenHashTab/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=4 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G

SET "URL=https://github.com/namazso/OpenHashTab/releases/download/%VERSION%/OpenHashTab_setup.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
    curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
    start /wait %TEMP%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
      
ECHO Cleaning temporary files...
    DEL %TEMP%\%OUTPUT%
    DEL %TEMP%\version*

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

