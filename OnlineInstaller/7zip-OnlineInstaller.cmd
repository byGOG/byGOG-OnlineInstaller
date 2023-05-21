@echo off
setlocal
set output=7z.exe
set name=7-Zip

title %name% Online Installer

REM Check the version number
curl -s https://www.7-zip.org/ | findstr /C:"Download 7-Zip " | findstr /v /c:"beta" | findstr /v /c:"alpha" > %temp%\version.txt
for /F "tokens=3" %%G in (%temp%\version.txt) do set version=%%G
set version=%version:.=%

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set zip_url=https://www.7-zip.org/a/7z%version%-x64.exe
) else (
    set zip_url=https://www.7-zip.org/a/7z%version%.exe
)

echo ---------------------------------------------------
echo Downloading %name%:%version%
curl -# -L -o %temp%\%output% %zip_url%

echo Installing %name%...
start /wait %temp%\%output% /S

echo Configuring settings...
Reg.exe add "HKCU\Software\7-Zip\Options" /v "MenuIcons" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\7-Zip\Options" /v "ContextMenu" /t REG_DWORD /d "16247" /f

echo Cleaning temporary files...
del %temp%\%output%
del %temp%\version.txt

ECHO Installation completed successfully! by GOG [sordum.net]
echo ---------------------------------------------------

timeout /T 10
