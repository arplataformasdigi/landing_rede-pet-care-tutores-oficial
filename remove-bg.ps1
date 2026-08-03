Add-Type -AssemblyName System.Drawing
$img = [System.Drawing.Image]::FromFile('c:\Users\alfas\Desktop\landing tutores\landing_rede-pet-care-tutores-oficial\uploads\logo-paw.png')
$bmp = new-object System.Drawing.Bitmap($img)
$img.Dispose()
$bgColor = $bmp.GetPixel(0,0)
$bmp.MakeTransparent($bgColor)
$bmp.Save('c:\Users\alfas\Desktop\landing tutores\landing_rede-pet-care-tutores-oficial\uploads\logo-paw.png', [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
