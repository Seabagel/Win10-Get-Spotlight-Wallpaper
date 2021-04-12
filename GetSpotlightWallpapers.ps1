$DesktopPath = "C:\Users\" + $env:UserName + "\Desktop\Wallpapers\"
$WallpaperPath = "C:\Users\" + $env:UserName + "\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\"

If( !(Test-Path $DesktopPath) ){ New-Item -ItemType Directory -Force -Path $DesktopPath }
If( !(Test-Path $WallpaperPath) ){ New-Item -ItemType Directory -Force -Path $WallpaperPath }

cd $DesktopPath
gci $WallpaperPath -File | Copy-Item -Force -Destination {$DesktopPath + $_.BaseName + ".png"}
 
# ? { (!Test-Path ($DesktopPath + $BaseName + ".png") }
# gci $WallpaperPath -File | ? {(-not (Test-Path ($DesktopPath + $BaseName + ".png"))) {Copy-Item -Destination $DesktopPath}}
# gci $DesktopPath -File | Rename-Item -NewName { $_.BaseName + ".png"}