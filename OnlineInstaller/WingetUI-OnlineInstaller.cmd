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
	 
ECHO Closing %NAME%...
	 POWERSHELL -Command "while (!(Get-Process -Name wingetui -ErrorAction SilentlyContinue)) { Start-Sleep -Milliseconds 500 }; Stop-Process -Name wingetui"
	 
ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------
