@ECHO OFF
SETLOCAL
SET OUTPUT=notepadplusplus.exe
SET NAME=Notepad++
TITLE %NAME% Online Installer

REM Check the version number
curl -s https://notepad-plus-plus.org/ | findstr /C:"Current Version " > %TEMP%\version.txt
FOR /F "tokens=6-7 delims=<> " %%G IN (%TEMP%\version.txt) DO SET VERSION=%%G

IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    SET MY_URL=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v%VERSION%/npp.%VERSION%.Installer.x64.exe
) ELSE (
    SET MY_URL=https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v%VERSION%/npp.%VERSION%.Installer.exe
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

TIMEOUT /T 10
