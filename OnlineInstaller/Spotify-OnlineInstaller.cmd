@ECHO OFF
SETLOCAL

SET OUTPUT=SpotifyFullSetup.exe
SET NAME=Spotify
SET MY_URL=https://download.scdn.co/SpotifyFullSetup.exe

TITLE %NAME% Online Installer

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 curl -# -L -o %TEMP%\%OUTPUT% %MY_URL%

ECHO Installing %NAME%...
	 START /wait %TEMP%\%OUTPUT% /silent

ECHO Closing %NAME%...
	 PING 127.0.0.1 -n 6 > nul
	 POWERSHELL -Command "Stop-Process -Name Spotify"

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10