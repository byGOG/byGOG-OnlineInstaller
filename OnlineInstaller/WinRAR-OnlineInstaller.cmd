@echo off
setlocal
set "OUTPUT=WinRAR.exe"
set "NAME=WinRAR"

title %name% Online Installer

REM Check the version number
curl -s https://www.rarlab.com/ | findstr /C:"WinRAR and RAR " | findstr /V /C:"BETA" > %temp%\version.txt
for /F "tokens=4" %%G in (%temp%\version.txt) do set version=%%G
set version=%version:.=%

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set winrar_url=https://www.rarlab.com/rar/winrar-x64-%version%tr.exe
) else (
    set winrar_url=https://www.rarlab.com/rar/winrar-x32-%version%tr.exe
)

echo ---------------------------------------------------
echo Downloading %name%: %version%
	 curl -# -L -o %temp%\%OUTPUT% %winrar_url%

echo Installing %name%...
	 start /wait %temp%\%OUTPUT% /S

echo Cleaning temporary files...
	 del %temp%\%OUTPUT%
	 del %temp%\version.txt

ECHO Installation completed successfully! by GOG [sordum.net]
echo ---------------------------------------------------
