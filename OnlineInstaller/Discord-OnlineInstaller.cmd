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

ECHO Window minimized or closing %NAME%...
	 PING 127.0.0.1 -n 6 > nul
	 powershell -Command "Get-Process Discord | ForEach-Object { $_.CloseMainWindow() }"

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------