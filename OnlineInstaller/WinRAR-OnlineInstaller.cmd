@echo off
setlocal
set output=WinRAR.exe
set name=WinRAR

title %name% Cevrimici Yukleyici

REM Sürüm numarasını kontrol et
curl -s https://www.rarlab.com/ | findstr /C:"WinRAR and RAR " | findstr /V /C:"BETA" > %temp%\version.txt
for /F "tokens=4" %%G in (%temp%\version.txt) do set version=%%G
set version=%version:.=%
del %temp%\version.txt


if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set winrar_url=https://www.rarlab.com/rar/winrar-x64-%version%tr.exe
) else (
    set winrar_url=https://www.rarlab.com/rar/winrar-x32-%version%tr.exe
)

echo ---------------------------------------------------
echo %name% indiriliyor: %version%
curl -# -L -o %temp%\%output% %winrar_url%

echo %name% kuruluyor...
start /wait %temp%\%output% /S

echo Gecici dosyalar siliniyor...
del %temp%\%output%

ECHO Installation completed successfully! by GOG [sordum.net]
echo ---------------------------------------------------

timeout /T 10
