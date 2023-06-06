@ECHO OFF
SETLOCAL
SET "OUTPUT=WingetUI.Installer.exe"
SET "NAME=WingetUI"
TITLE %NAME% Online Installer

SET "URL=https://github.com/marticliment/WingetUI/releases/latest/download/WingetUI.Installer.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 curl -L#o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%
	 
ECHO Window closing %NAME%...
    TASKLIST | FIND /I "wingetui.exe" >NUL
if errorlevel 1 (
    ECHO WingetUI.exe has been closed.
) else (
    ECHO WingetUI.exe is still running. Closing it...
    TASKKILL /F /IM "wingetui.exe" >NUL
)
	 
ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------
