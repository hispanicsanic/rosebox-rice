#aliases
alias rm='rm -rf'
alias cp='cp -r'

alias weather='curl wttr.in/'

alias dwmrebuild='cd ~/.local/src/dwm/; sudo make clean install'
alias dwmedit='nvim ~/.local/src/dwm/config.h'

alias cleanup='sudo pacman -Rs $(pacman -Qqdt)'
alias update='yay -Syu'
alias webcam='mpv /dev/video0 --profile=low-latency --untimed'
