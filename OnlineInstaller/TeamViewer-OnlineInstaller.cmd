@ECHO OFF
SETLOCAL
SET OUTPUT=TeamViewer.exe
SET NAME=TeamViewer
TITLE %NAME% Online Installer

IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    SET MY_URL=https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe
) ELSE (
    SET MY_URL=https://download.teamviewer.com/download/TeamViewer_Setup.exe
)

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% %MY_URL%

ECHO Installing %NAME%...
start /wait %TEMP%\%OUTPUT% /S

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------