@ECHO OFF
SETLOCAL
SET "OUTPUT=DeepLSetup.exe"
SET "NAME=DeepL"
TITLE %NAME% Online Installer

SET "URL=https://appdownload.deepl.com/windows/0install/DeepLSetup.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /S
	 
ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10