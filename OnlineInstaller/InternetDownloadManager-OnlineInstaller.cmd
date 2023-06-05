@ECHO OFF
SETLOCAL
SET "OUTPUT=idman-setup.exe"
SET "NAME=Internet Download Manager"
TITLE %NAME% Online Installer

set "URL=https://www.internetdownloadmanager.com/"

for /f "tokens=3 delims==>" %%a in (
  'curl -s "%URL%" ^| findstr /c:"Try IDM 30-days free trial"'
) do set "DOWNLOAD_URL=%%a"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:
	 curl -# -L -o %TEMP%\%OUTPUT% "%DOWNLOAD_URL%"
	 
ECHO Closing %NAME%...
	 taskkill /IM idman.exe /F /T
	 
ECHO Installing %NAME%...
	 start /wait %TEMP%\%OUTPUT% /skipdlgs

ECHO Cleaning temporary files...
	 DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------