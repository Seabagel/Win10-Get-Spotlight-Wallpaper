$DesktopPath = "C:\Users\" + $env:UserName + "\Desktop\Wallpapers"
$WallpaperPath = "C:\Users\" + $env:UserName + "\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\"

If( !(test-path $DesktopPath) ){ New-Item -ItemType Directory -Force -Path $DesktopPath }
If( !(test-path $WallpaperPath) ){ New-Item -ItemType Directory -Force -Path $WallpaperPath }

cd $DesktopPath
mkdir $WallpaperPath
xcopy $WallpaperPath $DesktopPath /i /q /y
gci -File | Rename-Item -NewName { $_.basename + ".png"}