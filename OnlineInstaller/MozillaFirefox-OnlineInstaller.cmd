@echo off
setlocal
set output=FirefoxSetup.exe
set name=Mozilla Firefox

title %name% Online Installer

if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set zip_url="https://download.mozilla.org/?product=firefox-latest&os=win64&lang=tr"
) else (
    set zip_url="https://download.mozilla.org/?product=firefox-latest&os=win&lang=tr"
)

echo ---------------------------------------------------
echo Downloading %name%...
curl -# -L -o %temp%\%output% %zip_url%

echo Installing %name%...
start /wait %temp%\%output% -ms /S

echo Cleaning temporary files...
del %temp%\%output%

echo Installation completed successfully! by GOG [sordum.net]
echo ---------------------------------------------------

timeout /T 10
