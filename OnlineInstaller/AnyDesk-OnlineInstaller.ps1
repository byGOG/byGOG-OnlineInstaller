# Ayarlar
$Output = "AnyDesk.exe"
$Name = "AnyDesk"
$Title = "$Name Çevrimiçi Yükleyici"
$MyURL = "https://download.anydesk.com/AnyDesk.exe"

Write-Host "---------------------------------------------------"
Write-Host "$Name indiriliyor..."
Write-Host "URL: $MyURL"

# Dosyayı indir
Invoke-WebRequest -Uri $MyURL -OutFile "$env:TEMP\$Output" -UseBasicParsing

Write-Host "$Name kuruluyor..."
Start-Process "$env:TEMP\$Output" -ArgumentList '--install', "$env:SystemDrive\PROGRA~2\AnyDesk", '--create-shortcuts', '--create-desktop-icon', '--silent' -NoNewWindow -Wait -Verb RunAs

Write-Host "Geçici dosyalar temizleniyor..."
Remove-Item "$env:TEMP\$Output" -Force

Write-Host "Kurulum başarıyla tamamlandı! by GOG [sordum.net]"
Write-Host "---------------------------------------------------"
