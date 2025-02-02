@ECHO OFF
SET "OUTPUT=BleachBit.exe"
SET "NAME=BleachBit"
TITLE %NAME% Online Installer

REM Yonetici ayricaliklari kontrolu
NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Yonetici ayricaliklari gerekiyor. Lutfen bu komut dosyasini yonetici olarak calistirin.
    PAUSE
    EXIT /B
)

curl -sL https://github.com/bleachbit/bleachbit/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=3 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G
set version=%version:v=%

SET "URL=https://download.bleachbit.org/BleachBit-%VERSION%-setup.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
    curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
    start /wait %TEMP%\%OUTPUT% /S /allusers
      
ECHO Cleaning temporary files...
    DEL %TEMP%\%OUTPUT%
    DEL %TEMP%\version*

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

