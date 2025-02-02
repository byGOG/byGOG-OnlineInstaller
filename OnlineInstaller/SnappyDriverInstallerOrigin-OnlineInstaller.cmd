@ECHO OFF
SET "OUTPUT=SDIO.zip"
SET "NAME=Snappy Driver Installer Origin"
TITLE %NAME% Online Installer

FOR /F "tokens=4 delims=>< " %%A IN ('curl -s https://www.glenn.delahoy.com/snappy-driver-installer-origin/ ^| findstr /I ".zip" ^| findstr /I "href"') DO (
    SET "DOWNLOAD_URL=%%A"
    IF NOT "%%A"=="href=" GOTO DOWNLOAD
)

:DOWNLOAD
ECHO %DOWNLOAD_URL% | findstr /I "http" >nul || SET "DOWNLOAD_URL=https://www.glenn.delahoy.com/snappy-driver-installer-origin/%DOWNLOAD_URL%"

ECHO ---------------------------------------------------
ECHO Creating folder...
	mkdir "%SYSTEMDRIVE%\tools"

ECHO Downloading %NAME%:
	curl -# -L -o "%SYSTEMDRIVE%\tools\%OUTPUT%" "%DOWNLOAD_URL%"

ECHO Extracting files...
	POWERSHELL Expand-Archive -LiteralPath '%SYSTEMDRIVE%\tools\%OUTPUT%' -DestinationPath "%SYSTEMDRIVE%\tools\SnappyDriverInstallerOrigin" -Force
	POWERSHELL -Command "$Shell=New-Object -COMObject WScript.Shell; $Shortcut=$Shell.CreateShortcut($Shell.SpecialFolders('Desktop') + '\Tools.lnk'); $Shortcut.TargetPath='%SYSTEMDRIVE%\Tools'; $Shortcut.IconLocation='shell32.dll,24'; $Shortcut.Save()"

ECHO Cleaning temporary files...
    DEL %SYSTEMDRIVE%\tools\%OUTPUT%

ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------