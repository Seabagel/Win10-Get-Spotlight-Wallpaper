# Destination and Source Paths
$DesktopPath = "C:\Users\" + $env:UserName + "\Desktop\Wallpapers\"
$WallpaperPath = "C:\Users\" + $env:UserName + "\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\"

# Test if Path is valid, then make the directory
If( !(Test-Path $DesktopPath) ){ New-Item -ItemType Directory -Force -Path $DesktopPath }
If( !(Test-Path $WallpaperPath) ){ New-Item -ItemType Directory -Force -Path $WallpaperPath }

# Copy each file in Wallpaper folder, copy it to the Desktop folder, and name add an extension
gci $WallpaperPath -File | Copy-Item -Force -Destination {$DesktopPath + $_.BaseName + ".png"}