@ECHO OFF
SETLOCAL
SET "OUTPUT=ProtonVPN.exe"
SET "NAME=Proton VPN"
TITLE %NAME% Online Installer

curl -sL https://github.com/ProtonVPN/win-app/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=3 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G

SET "URL=https://github.com/ProtonVPN/win-app/releases/download/%VERSION%/ProtonVPN_v%VERSION%.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------