@ECHO OFF
SETLOCAL
SET "OUTPUT=VSCodeUserSetup.exe"
SET "NAME=Visual Studio Code"
TITLE %NAME% Online Installer

REM Set the download URL based on the processor architecture
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    SET "URL=https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
) ELSE (
    SET "URL=https://code.visualstudio.com/sha/download?build=stable&os=win32-user"
)

ECHO ---------------------------------------------------
ECHO Downloading %NAME%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /VERYSILENT /NORESTART /MERGETASKS=!runcode,desktopicon,addcontextmenufiles,addcontextmenufolders,associatewithfiles

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------