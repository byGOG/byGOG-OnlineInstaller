$ErrorActionPreference = "Stop"
# Dosya URL'si
$DownloadURL = "https://github.com/byGOG/byGOG-OnlineInstaller/raw/main/byGOG-OnlineInstaller.cmd"
# Dosya indirme yolu
$FilePath = "$env:TEMP\byGOG-OnlineInstaller.cmd"

# Dosyayı indir
Invoke-WebRequest -Uri $DownloadURL -OutFile $FilePath -UseBasicParsing

# Dosyayı çalıştır
Start-Process -FilePath $FilePath -Wait