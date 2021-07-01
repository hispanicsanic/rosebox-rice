#autocomplete
autoload -Uz compinit promptinit
compinit
promptinit
setopt COMPLETE_ALIASES

#title
print -n '\e]2;kitty\a'

#theme
zstyle ':completion:*' menu select
prompt redhat
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#keybinds
typeset -g -A key
key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"

[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"       beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"        end-of-line
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"         up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"       down-line-or-history

if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

#aliases                                                                                                           
alias dwmrebuild='cd ~/.local/src/dwm/; sudo make clean install'                                                   
alias dwmedit='nvim ~/.local/src/dwm/config.h'                                                                     
                                                                                                                   
alias cleanup='sudo pacman -Rs $(pacman -Qqdt)'                                                                    
alias update='yay -Syu'                                                                                            
                                                                                                                   
alias ls='ls --color=auto'
