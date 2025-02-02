@ECHO OFF
SET "OUTPUT=TabbyTerminal.exe"
SET "NAME=Tabby Terminal"
TITLE %NAME% Online Installer

curl -sL https://github.com/Eugeny/tabby/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=3 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G
SET version=%version:v=%

SET "URL=https://github.com/Eugeny/tabby/releases/download/v%VERSION%/tabby-%VERSION%-setup-x64.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
    curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /S /allusers

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------