@ECHO OFF
SETLOCAL
SET "OUTPUT=qbittorrent_setup.exe"
SET "NAME=qBittorrent"
TITLE %NAME% Online Installer

SET URL=https://sourceforge.net/projects/qbittorrent/files/latest/download

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
start /wait %TEMP%\%OUTPUT% /S

ECHO Creating a shortcut on the desktop.
POWERSHELL; Start-Process cmd -ArgumentList '/c mklink %PUBLIC%\Desktop\%NAME%.lnk %SYSTEMDRIVE%\PROGRA~1\%NAME%\%OUTPUT%' -WindowStyle Hidden -Verb RunAs -Wait

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10