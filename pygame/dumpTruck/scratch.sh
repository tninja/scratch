
convert dump.truck.left.jpg -fuzz 50% -transparent "#C5BEB6" dump.truck.left.0.jpg

convert dump.truck.left.jpg'[1x1+10+10]' txt:-

convert dump.truck.left.jpg -fuzz 15% -fill white -draw 'color 0,0 floodfill' -draw 'color 4000,2000 floodfill' dump.truck.left.white.jpg

open dump.truck.left.white.jpg

convert dump.truck.left.white.jpg -fuzz 10% -transparent white dump.truck.left.0.jpg

convert dump.truck.left.0.jpg -fuzz 20% -transparent white -resize 25% dump.truck.left.0.png

open dump.truck.left.0.jpg

convert dump.truck.down.jpg -fuzz 18% -fill white -draw 'color 0,0 floodfill' -draw 'color 0,3000 floodfill' dump.truck.down.white.jpg

convert dump.truck.down.white.jpg -fuzz 10% -transparent white open dump.truck.down.0.jpg

open dump.truck.down.0.jpg

convert dump.truck.down.0.jpg -fuzz 20% -transparent white -resize 25% dump.truck.down.0.png

convert dump.truck.up.jpg -fuzz 17% -fill white -draw 'color 0,0 floodfill' -draw 'color 0,3000 floodfill' -draw 'color 2900,3900 floodfill' dump.truck.up.white.jpg

convert dump.truck.up.white.jpg -fuzz 10% -transparent white open dump.truck.up.0.jpg

convert dump.truck.up.0.jpg -fuzz 10% -transparent white -resize 25% dump.truck.up.0.png

open dump.truck.up.0.jpg

convert dump.truck.left.down.jpg -fuzz 15% -fill white -draw 'color 0,0 floodfill' -draw 'color 2900,3900 floodfill' -draw 'color 10,3900 floodfill' dump.truck.left.down.white.jpg

convert dump.truck.left.down.white.jpg -fuzz 10% -transparent white open dump.truck.left.down.0.jpg

convert dump.truck.left.down.0.jpg -fuzz 10% -transparent white -resize 25% dump.truck.left.down.0.png

open dump.truck.left.down.0.jpg

open dump.truck.left.down.white.jpg

convert dump.truck.left.up.jpg -fuzz 18% -fill white -draw 'color 0,0 floodfill' -draw 'color 2900,3900 floodfill' -draw 'color 10,3900 floodfill' dump.truck.left.up.white.jpg

convert dump.truck.left.up.0.jpg -fuzz 10% -transparent white -resize 25% dump.truck.left.up.0.png

open dump.truck.left.up.0.jpg

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=F8EsaB0OEsw

say "you don't have a button in your body"

say "I am not a robot, i am human being"

say "1 + 2 = 3"

say "Hotdog Hotdog Hotdigdigdog"

say "Papa is going to buy hotdog and sandwich"

youtube-dl --extract-audio --audio-format mp3 https://www.youtube.com/watch?v=fXFg5QsTcLQ

convert blueberry-muffin-hi.png -fuzz 10% -transparent white -resize 25% muffin.0.png

open muffin.0.png

convert icecream.png -fuzz 10% -transparent white icecream.0.png

open icecream.0.png

convert fruitstand.jpg -fuzz 10% -transparent white fruitstand.0.png

open fruitstand.0.png

convert hotdog_shop.jpg -fuzz 10% -transparent white -resize 25% hotdog_shop.0.png

open hotdog_shop.0.png

convert hotdog_witheye.jpg -fuzz 10% -transparent white -resize 25% hotdog_witheye.0.png

open hotdog_witheye.0.png

convert Luke.jpg -crop 50%x100%+25%+0 Luke.crop.jpg

open ./Luke.crop.jpg

sudo apt install gimp

gimp Luke.jpg
