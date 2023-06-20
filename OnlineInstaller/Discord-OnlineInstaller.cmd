@ECHO OFF
SETLOCAL
SET OUTPUT=DiscordSetup.exe
SET NAME=Discord
TITLE %NAME% Online Installer

SET "URL=https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT%

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------