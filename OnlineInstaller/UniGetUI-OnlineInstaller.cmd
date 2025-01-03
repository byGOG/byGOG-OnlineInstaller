@ECHO OFF
SETLOCAL
SET "OUTPUT=UniGetUI.Installer.exe"
SET "NAME=UniGetUI"
TITLE %NAME% Online Installer

SET "URL=https://github.com/marticliment/UniGetUI/releases/latest/download/UniGetUI.Installer.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 curl -L#o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /NoAutoStart /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- 

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%
	 
ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------