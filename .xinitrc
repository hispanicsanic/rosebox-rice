rm -rf ~/.cache/screenshots/*
mpd &
mpDris2 &
sxhkd &
picom &
unclutter &
xwallpaper --no-randr --maximize ~/.config/pape.png
dwmblocks &
exec dwm
