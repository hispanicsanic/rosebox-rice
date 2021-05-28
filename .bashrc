#aliases
alias dock='xrandr --output HDMI1 --auto --output eDP1 --off'
alias undock='xrandr --output HDMI1 --off --output eDP1 --auto'

alias dwmbackup='rm -rf ~/.config/dwmbackup/*; cp ~/.config/dwm/* ~/.config/dwmbackup/'
alias dwmrestore='rm -rf ~/.config/dwm/*; cp ~/.config/dwmbackup/* ~/.config/dwm/'
alias dwmrebuild='cd ~/.config/dwm/; sudo make clean install'
alias dwmedit='nvim ~/.config/dwm/config.h'

alias cleanup='sudo pacman -Rs $(pacman -Qqdt)'
alias webcam='mpv /dev/video0 --profile=low-latency --untimed'
