@ECHO OFF
SETLOCAL
SET OUTPUT=qbittorrent.exe
SET NAME=qBittorrent
TITLE %NAME% Online Installer

curl -s https://www.qbittorrent.org/download | findstr /C:"Download qBittorrent" > %temp%\version.txt
FOR /F "tokens=6 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G
set version=%version:v=%

SET URL=https://sourceforge.net/projects/qbittorrent/files/qbittorrent-win32/qbittorrent-%VERSION%/qbittorrent_%VERSION%_lt20_qt6_x64_setup.exe/download

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
start /wait %TEMP%\%OUTPUT% /S

ECHO Creating a shortcut on the desktop.
POWERSHELL; Start-Process cmd -ArgumentList '/c mklink %PUBLIC%\Desktop\%NAME%.lnk %SYSTEMDRIVE%\PROGRA~1\%NAME%\%OUTPUT%' -WindowStyle Hidden -Verb RunAs -Wait

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT%
DEL %TEMP%\version.txt

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10