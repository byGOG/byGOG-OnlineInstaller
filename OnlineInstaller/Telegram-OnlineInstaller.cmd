@echo off
setlocal
set OUTPUT=tsetup.exe
set NAME=Telegram

title %NAME% Online Installer

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set MY_URL="https://telegram.org/dl/desktop/win64"
) else (
    set MY_URL="https://telegram.org/dl/desktop/win"
)

echo ---------------------------------------------------
echo Downloading: %NAME%...
	 curl -# -L -o %TEMP%\%OUTPUT% %MY_URL%

echo Installing: %NAME%...
	 START /wait %TEMP%\%OUTPUT% /Verysilent

echo Deleting temporary files...
	 DEL %TEMP%\%OUTPUT%

echo Installation completed successfully! by GOG [sordum.net]
echo ---------------------------------------------------