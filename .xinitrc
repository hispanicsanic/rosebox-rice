rm -rf ~/.cache/screenshots/*
[ ! -s ~/.config/mpd/pid ] && mpd
mpDris2 &
sxhkd &
picom &
unclutter &
killall steam
killall discord
xwallpaper --no-randr --maximize ~/pictures/wallpapers/otter.png
dwmblocks &
exec dwm
