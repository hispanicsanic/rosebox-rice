rm -rf ~/.cache/screenshots/*
mpd &
mpDris2 &
sxhkd &
picom &
unclutter &
xwallpaper --no-randr --maximize ~/pictures/wallpapers/gruvbox-city.png
killall discord
killall steam
discord &
steam &
dwmblocks &
pkill -RTMIN+20 dwmblocks
exec dwm
