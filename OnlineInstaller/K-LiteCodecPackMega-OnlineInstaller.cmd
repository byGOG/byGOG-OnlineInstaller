@ECHO OFF
SETLOCAL
SET "OUTPUT=K-Lite_Codec_Pack_Mega.exe"
SET "NAME=K-Lite Codec Pack Mega"
TITLE %NAME% Online Installer

curl -s https://codecguide.com/features_mega.htm | findstr /C:"Contents of version " > %temp%\version.txt
FOR /F "tokens=12 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G
set version=%version:.=%
set version=%version::=%

SET "URL=https://files3.codecguide.com/K-Lite_Codec_Pack_%VERSION%_Mega.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 CURL -# -L -o %TEMP%\%OUTPUT% %URL%
	 
ECHO Installing %NAME%...
	 START /wait %TEMP%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
	 
ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%
	 DEL %TEMP%\version.txt
	 
ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------