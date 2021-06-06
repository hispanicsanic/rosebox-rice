rm -rf ~/.cache/screenshots/*
mpd &
mpDris2 &
sxhkd &
picom &
xwallpaper --no-randr --center ~/pictures/wallpapers/otter.png
dwmblocks &
pkill -RTMIN+20 dwmblocks
dwm
