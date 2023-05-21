@ECHO OFF
SETLOCAL
SET "OUTPUT=CopyQ-setup.exe"
SET "NAME=CopyQ"
TITLE %NAME% Online Installer

curl -sL https://github.com/hluk/CopyQ/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=3 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G

SET "URL=https://github.com/hluk/CopyQ/releases/download/v%VERSION%/copyq-%VERSION%-setup.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /TASKS="desktopicon,quicklaunchicon"

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10
