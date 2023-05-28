@ECHO OFF
SETLOCAL
SET "OUTPUT=K-Lite_Codec_Pack_Mega.exe"
SET "NAME=K-Lite Codec Pack Mega"
TITLE %NAME% Online Installer

curl -s https://codecguide.com/download_k-lite_codec_pack_mega.htm | findstr /C:"<h4>Version " > %temp%\version.txt
for /F "tokens=2" %%G in (%temp%\version.txt) do set version=%%G
set version=%version:.=%

SET "URL=https://files3.codecguide.com/K-Lite_Codec_Pack_%VERSION%_Mega.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
	 CURL -# -L -o %TEMP%\%OUTPUT% %URL%
 
ECHO Installing %name%...
	 START /wait %temp%\%OUTPUT% /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
	 
ECHO Cleaning temporary files...
	 DEL %temp%\%OUTPUT%
	 DEL %temp%\version.txt
	 
ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10