cd C:\Users\<YOUR_USERNAME>\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\
ren * *.png
xcopy * C:\Users\<YOUR_USERNAME>\Desktop\Wallpapers /i /q /y
forfiles /m *.png /c "cmd /c ren @file @fname"