@ECHO OFF
SET "OUTPUT=WizTree.exe"
SET "NAME=WizTree"
TITLE %NAME% Online Installer

SETLOCAL ENABLEDELAYEDEXPANSION
SET FOUND_VERSION=0

FOR /F "tokens=3 delims=<> " %%G IN ('curl -sL https://diskanalyzer.com/whats-new ^| findstr /C:"<h4>WizTree "') DO (
    IF !FOUND_VERSION! EQU 0 (
        SET VERSION=%%G
        SET FOUND_VERSION=1
    )
)
SET VERSION=%VERSION:.=_%

SET "URL=https://diskanalyzer.com/files/wiztree_%VERSION%_setup.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
    curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------
