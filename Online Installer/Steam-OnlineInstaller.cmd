@ECHO OFF
SETLOCAL

SET OUTPUT=SteamSetup.exe
SET NAME=Steam
SET MY_URL=https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe

TITLE %NAME% Online Installer

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 curl -# -L -o %TEMP%\%OUTPUT% %MY_URL%

ECHO Installing %NAME%...
	 START /wait %TEMP%\%OUTPUT% /S

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10