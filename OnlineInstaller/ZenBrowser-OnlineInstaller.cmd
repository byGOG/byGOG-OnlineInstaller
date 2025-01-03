@ECHO OFF
SETLOCAL
SET "OUTPUT=ZenBrowser.exe"
SET "NAME=Zen Browser"
TITLE %NAME% Online Installer

:: En son sürümün başlık bilgisini çekip, sürüm numarasını alıyoruz
curl -sL https://github.com/zen-browser/desktop/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=6 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G


:: İndirme linkini oluşturuyoruz
SET "URL=https://github.com/zen-browser/desktop/releases/download/%VERSION%/zen.installer.exe"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
start /wait %TEMP%\%OUTPUT% -ms /S

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------
ENDLOCAL
