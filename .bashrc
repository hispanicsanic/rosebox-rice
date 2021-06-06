#aliases
alias rm='rm -rf'
alias cp='cp -r'

alias dock='xrandr --output HDMI1 --auto --output eDP1 --off'
alias undock='xrandr --output HDMI1 --off --output eDP1 --auto'

alias dwmrebuild='cd ~/.local/src/dwm/; sudo make clean install'
alias dwmedit='nvim ~/.local/src/dwm/config.h'

alias cleanup='sudo pacman -Rs $(pacman -Qqdt)'
alias update='yay -Syu'
alias webcam='mpv /dev/video0 --profile=low-latency --untimed'
