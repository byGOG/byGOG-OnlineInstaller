@ECHO OFF
SETLOCAL
SET "NAME=WinGet"
TITLE %NAME% Online Installer

ECHO ---------------------------------------------------
ECHO Downloading %NAME%:%VERSION%
CURL -# -L -o %TEMP%\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle https://aka.ms/getwinget
CURL -# -L -o %TEMP%\Microsoft.VCLibs.x64.14.00.Desktop.appx https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx
CURL -# -L -o %TEMP%\Microsoft.UI.Xaml.2.7.x64.appx https://github.com/microsoft/microsoft-ui-xaml/releases/download/v2.7.3/Microsoft.UI.Xaml.2.7.x64.appx
	 
ECHO Installing %NAME%...
powershell Add-AppxPackage -Path %TEMP%\Microsoft.VCLibs.x64.14.00.Desktop.appx
powershell Add-AppxPackage -Path %TEMP%\Microsoft.UI.Xaml.2.7.x64.appx
powershell Add-AppxPackage -Path %TEMP%\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
	 
ECHO Cleaning temporary files...
DEL %TEMP%\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
DEL %TEMP%\Microsoft.VCLibs.x64.14.00.Desktop.appx
DEL %TEMP%\Microsoft.UI.Xaml.2.7.x64.appx
	 
ECHO Installation completed successfully! by GOG [sordum.net]
ECHO ---------------------------------------------------