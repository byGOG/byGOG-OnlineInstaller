@ECHO OFF
SETLOCAL
SET "OUTPUT=PowerToysSetup.exe"
SET "NAME=PowerToys"
TITLE %NAME% Online Installer

curl -sL https://github.com/microsoft/PowerToys/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=4 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G
set version=%version:v=%

SET "URL=https://github.com/microsoft/PowerToys/releases/download/v%VERSION%/PowerToysSetup-%VERSION%-x64.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /quiet /norestart

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------