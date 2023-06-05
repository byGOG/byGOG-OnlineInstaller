@ECHO OFF
SETLOCAL
SET OUTPUT=Everything-Setup.exe
SET NAME=Everything
TITLE %NAME% Online Installer

REM Check the version number
curl -s https://www.voidtools.com/ | findstr /C:"Everything " > %TEMP%\version.txt
FOR /F "tokens=5 delims=<> " %%G IN (%TEMP%\version.txt) DO SET VERSION=%%G

IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    SET MY_URL=https://www.voidtools.com/Everything-%VERSION%.x64-Setup.exe
) ELSE (
    SET MY_URL=https://www.voidtools.com/Everything-%VERSION%.x86-Setup.exe
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