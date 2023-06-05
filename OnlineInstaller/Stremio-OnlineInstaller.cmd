@ECHO OFF
SETLOCAL
SET "OUTPUT=StremioSetup.exe"
SET "NAME=Stremio"
TITLE %NAME% Online Installer

SET "URL=https://www.strem.io/download?four=4"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /S
	 
ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------