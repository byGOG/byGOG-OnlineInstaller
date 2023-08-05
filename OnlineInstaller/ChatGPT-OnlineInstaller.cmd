@ECHO OFF
SETLOCAL
SET "OUTPUT=ChatGPT.msi"
SET "NAME=ChatGPT"
TITLE %NAME% Online Installer

curl -sL https://github.com/lencx/ChatGPT/releases/latest | findstr /C:"<title>Release " > %temp%\version.txt
FOR /F "tokens=4 delims=<> " %%G IN (%temp%\version.txt) DO SET VERSION=%%G
set version=%version:v=%

SET "URL=https://github.com/lencx/ChatGPT/releases/download/v%VERSION%/ChatGPT_%VERSION%_windows_x86_64.msi"

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
curl -# -L -o %TEMP%\%OUTPUT% "%URL%"

ECHO Installing %NAME%...
POWERSHELL; Start-Process cmd -ArgumentList '/c start /wait msiexec /i "%TEMP%\%OUTPUT%" /quiet /norestart' -WindowStyle Hidden -Verb RunAs -Wait

ECHO Cleaning temporary files...
DEL %TEMP%\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------