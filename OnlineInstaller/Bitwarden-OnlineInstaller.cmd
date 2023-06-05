@ECHO OFF
SETLOCAL
SET "OUTPUT=Bitwarden-Installer.exe"
SET "NAME=Bitwarden"
TITLE %NAME% Online Installer

SET "URL=https://vault.bitwarden.com/download/?app=desktop&platform=windows"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /S
	 
ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------