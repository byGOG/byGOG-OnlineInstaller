# PowerShell Betiği: 7-Zip Online Yükleyici

# Betik değişkenlerini ayarla
$output = "7z.exe"
$name = "7-Zip"

Write-Host "Başlık: $name Çevrimiçi Yükleyici" -ForegroundColor Cyan

# Sürüm numarasını kontrol et
Write-Host "En son $name sürümü kontrol ediliyor..." -ForegroundColor Yellow
$versionPage = Invoke-WebRequest -Uri "https://www.7-zip.org/" -UseBasicParsing
$versionRegex = [regex]::Match($versionPage.Content, "Download 7-Zip (\d+\.\d+)") # Sürüm desenini eşleştir
$version = $versionRegex.Groups[1].Value -replace '\.', ''

if ([Environment]::Is64BitOperatingSystem) {
    $zipUrl = "https://www.7-zip.org/a/7z$version-x64.exe"
} else {
    $zipUrl = "https://www.7-zip.org/a/7z$version.exe"
}

Write-Host "---------------------------------------------------"
Write-Host "$name sürüm $version indiriliyor..." -ForegroundColor Green

# Yükleyiciyi indir
$tempFile = Join-Path $env:TEMP $output
Invoke-WebRequest -Uri $zipUrl -OutFile $tempFile -UseBasicParsing

Write-Host "$name yükleniyor..." -ForegroundColor Green
Start-Process -FilePath $tempFile -ArgumentList "/S" -Wait

Write-Host "Ayarlar yapılandırılıyor..." -ForegroundColor Yellow
# Kayıt defteri ayarlarını yapılandır
New-Item -Path "HKCU:\Software\7-Zip\Options" -Force | Out-Null
Set-ItemProperty -Path "HKCU:\Software\7-Zip\Options" -Name "MenuIcons" -Value 1
Set-ItemProperty -Path "HKCU:\Software\7-Zip\Options" -Name "ContextMenu" -Value 16247

Write-Host "Geçici dosyalar temizleniyor..." -ForegroundColor Yellow
# Geçici dosyaları temizle
Remove-Item -Path $tempFile -Force

Write-Host "Yükleme başarıyla tamamlandı! GOG tarafından [sordum.net]" -ForegroundColor Cyan
Write-Host "---------------------------------------------------"
