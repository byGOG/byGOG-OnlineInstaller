@ECHO OFF
SETLOCAL
SET "OUTPUT=qBittorrentEnhancedEdition.exe"
SET "NAME=qBittorrent Enhanced Edition"
TITLE %NAME% Online Installer

curl -sL https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=6 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G
set version=%version:v=%

SET "URL=https://github.com/c0re100/qBittorrent-Enhanced-Edition/releases/download/release-%VERSION%/qbittorrent_enhanced_%VERSION%_x64_setup.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /S
	 
ECHO Creating a shortcut on the desktop.
	 POWERSHELL; Start-Process cmd -ArgumentList '/c mklink %PUBLIC%\Desktop\qBittorrent.lnk %SYSTEMDRIVE%\PROGRA~1\qBittorrent\qBittorrent.exe' -WindowStyle Hidden -Verb RunAs -Wait
	 
ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------