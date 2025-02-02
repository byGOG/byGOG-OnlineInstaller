@echo off
SET "NAME=Chocolatey"
TITLE %NAME% Online Installer

echo Downloading and Installing %NAME%...
powershell -Command "Start-Process powershell -Verb RunAs -Wait -ArgumentList 'Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://community.chocolatey.org/install.ps1 -UseBasicParsing | iex; choco install chocolateygui --pre -y'"

echo Cleaning temporary files...
rmdir /s /q %TEMP%\chocolatey

ECHO Installation completed successfully! by GOG [sordum.net]
echo ---------------------------------------------------


