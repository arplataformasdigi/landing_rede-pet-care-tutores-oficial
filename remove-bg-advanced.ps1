Add-Type -AssemblyName System.Drawing
$orig = [System.Drawing.Image]::FromFile('C:\Users\alfas\.gemini\antigravity-ide\brain\cacac3f6-3356-441d-8755-144c0ffb89fd\media__1785768167156.png')
$bmp = new-object System.Drawing.Bitmap($orig)
$orig.Dispose()
for ($x=0; $x -lt $bmp.Width; $x++) {
  for ($y=0; $y -lt $bmp.Height; $y++) {
    $c = $bmp.GetPixel($x, $y)
    # The outer color is approx 122, 18, 195. Let's make anything close to that transparent.
    if ($c.R -lt 150 -and $c.G -lt 60 -and $c.B -lt 220) {
      $bmp.SetPixel($x, $y, [System.Drawing.Color]::Transparent)
    }
  }
}
$bmp.Save('c:\Users\alfas\Desktop\landing tutores\landing_rede-pet-care-tutores-oficial\uploads\logo-paw.png', [System.Drawing.Imaging.ImageFormat]::Png)
$bmp.Dispose()
