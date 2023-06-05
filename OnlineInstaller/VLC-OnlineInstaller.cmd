@ECHO off
SETLOCAL
SET "OUTPUT=VLCsetup.exe"
SET "NAME=VLC Media Player"
TITLE %NAME% Online Installer

set "arch=win32"
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" set "arch=win64"

set "url=https://download.videolan.org/vlc/last/%arch%/"
for /f "tokens=2 delims=-" %%v in ('curl -s %url% ^| findstr /i "vlc-.*-%arch%.exe"') do set "version=%%v"

set "installerUrl=https://download.videolan.org/vlc/last/%arch%/vlc-%version%-%arch%.exe"

echo ---------------------------------------------------
echo Downloading VLC: %version%
curl -# -L -o "%TEMP%\%OUTPUT%" "%installerUrl%"

echo Installing VLC...
start /wait "" "%TEMP%\%OUTPUT%" /L=1055 /S

echo Deleting temporary files...
del /q "%TEMP%\%OUTPUT%"

ECHO Installation completed successfully! by GOG [sordum.net]
echo ---------------------------------------------------

timeout /T 10