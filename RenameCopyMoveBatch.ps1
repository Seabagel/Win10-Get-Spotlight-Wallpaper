$WallpaperPath = "C:\Users\" + $env:UserName + "\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\"
$DesktopPath = "C:\Users\" + $env:UserName + "\Desktop\Wallpapers"

cd $DesktopPath
xcopy $WallpaperPath $DesktopPath /i /q /y
gci -File | Rename-Item -NewName { $_.basename + ".png"}