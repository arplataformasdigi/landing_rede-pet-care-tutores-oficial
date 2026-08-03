Add-Type -AssemblyName System.Drawing
$bmp = new-object System.Drawing.Bitmap('C:\Users\alfas\.gemini\antigravity-ide\brain\cacac3f6-3356-441d-8755-144c0ffb89fd\media__1785768167156.png')
write-host 'Original TopLeft:' $bmp.GetPixel(0,0)
$bmp.Dispose()
