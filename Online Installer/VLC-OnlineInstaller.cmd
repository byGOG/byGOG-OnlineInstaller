@echo off
title VLC Cevrimici Yukleyici

set "arch=win32"
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" set "arch=win64"

set "url=https://download.videolan.org/vlc/last/%arch%/"
for /f "tokens=2 delims=-" %%v in ('curl -s %url% ^| findstr /i "vlc-.*-%arch%.exe"') do set "version=%%v"

set "installerUrl=https://download.videolan.org/vlc/last/%arch%/vlc-%version%-%arch%.exe"

echo ---------------------------------------------------
echo VLC indiriliyor: %version%
curl -# -L -o "%TEMP%\VLCsetup.exe" "%installerUrl%"

echo VLC kuruluyor...
start /wait "" "%TEMP%\VLCsetup.exe" /L=1055 /S

echo Gecici dosyalar siliniyor...
del /q "%TEMP%\VLCsetup.exe"

ECHO Installation completed successfully! by GOG [sordum.net]
echo ---------------------------------------------------

timeout /T 10
