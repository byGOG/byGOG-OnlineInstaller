@ECHO OFF
SETLOCAL
SET "OUTPUT=Sandboxie-Plus.exe"
SET "NAME=Sandboxie"
TITLE %NAME% Online Installer

curl -sL https://github.com/sandboxie-plus/Sandboxie/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=4 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G

IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    SET "URL=https://github.com/sandboxie-plus/Sandboxie/releases/download/%VERSION%/Sandboxie-Plus-x64-%VERSION%.exe"
) ELSE (
    SET "URL=https://github.com/sandboxie-plus/Sandboxie/releases/download/%VERSION%/Sandboxie-Plus-x86-%VERSION%.exe"
)

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

TIMEOUT /T 10