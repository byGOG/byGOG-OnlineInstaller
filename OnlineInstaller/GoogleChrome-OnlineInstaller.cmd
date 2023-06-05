@echo off
setlocal
set OUTPUT=ChromeSetup.msi
set NAME=Google Chrome

title %NAME% Online Installer

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set MY_URL="https://dl.google.com/tag/s/dl/chrome/install/googlechromestandaloneenterprise64.msi"
) else (
    set MY_URL="https://dl.google.com/tag/s/dl/chrome/install/googlechromestandaloneenterprise.msi"
)

echo ---------------------------------------------------
echo Downloading: %NAME%...
curl -# -L -o %TEMP%\%OUTPUT% %MY_URL%

echo Installing: %NAME%...
POWERSHELL; Start-Process cmd -ArgumentList '/c start /wait msiexec /i "%temp%\%output%" /quiet /norestart' -WindowStyle Hidden -Verb RunAs -Wait

echo Deleting temporary files...
del %TEMP%\%OUTPUT%

echo Installation completed successfully! by GOG [sordum.net]
echo ---------------------------------------------------