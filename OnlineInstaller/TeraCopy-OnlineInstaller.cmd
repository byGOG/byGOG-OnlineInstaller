@ECHO OFF
SET "OUTPUT=TeraCopy.exe"
SET "NAME=TeraCopy"
TITLE %NAME% Online Installer

SET "URL=https://www.codesector.com/files/teracopy.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%
    curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /exenoui /exenoupdates /qn /norestart

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------