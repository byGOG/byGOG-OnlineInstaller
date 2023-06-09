@ECHO OFF
SETLOCAL
SET "OUTPUT=ShareX-setup.exe"
SET "NAME=ShareX"
TITLE %NAME% Online Installer

curl -sL https://github.com/ShareX/ShareX/releases/latest | findstr /C:"ShareX " > %temp%\version.txt
FOR /F "tokens=6 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G

SET "URL=https://github.com/ShareX/ShareX/releases/download/v%VERSION%/ShareX-%VERSION%-setup.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	start /wait %TEMP%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------