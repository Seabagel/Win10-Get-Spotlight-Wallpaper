cd C:\Users\$env:UserName\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\
ren * *.png
xcopy * C:\Users\$env:UserName\Desktop\Wallpapers /i /q /y
forfiles /m *.png /c "cmd /c ren @file @fname"