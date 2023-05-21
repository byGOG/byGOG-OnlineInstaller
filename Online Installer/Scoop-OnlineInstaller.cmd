@echo off
SET "NAME=Scoop"
TITLE %NAME% Online Installer

ECHO %NAME%...
powershell -Command "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser; iwr -useb get.scoop.sh | iex; scoop install sudo; sudo scoop install 7zip git scoop-search aria2; scoop bucket add extras"

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------

TIMEOUT /T 10