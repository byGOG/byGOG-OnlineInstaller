@ECHO OFF
SETLOCAL
SET "OUTPUT=BCUninstaller_setup.exe"
SET "NAME=Bulk Crap Uninstaller"
TITLE %NAME% Online Installer

curl -sL https://github.com/Klocman/Bulk-Crap-Uninstaller/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=6 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G
set version=%version:v=%

SET "URL=https://github.com/Klocman/Bulk-Crap-Uninstaller/releases/download/v%VERSION%/BCUninstaller_%VERSION%_setup.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%
	 DEL %TEMP%\version.txt
	 
ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------
