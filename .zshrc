
# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

#Vi mode
bindkey -v
export KEYTIMEOUT=1

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

#Aliases

#Pacman
alias up="sudo pacman -Syu"
alias infzf="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias rfzf="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"

#Editors
alias n="nvim"
alias v="vim"


alias s="startx"
alias zt="zathura"

#Configs
alias n_c="cd ~/.config/nvim"
alias s_u="sudo cp config.def.h config.h&&sudo make clean install"


#Variables
export BROWSER="firefox"
export EDITOR="nvim"

path+=('/home/br/.local/bin')
path+=('/home/br/go/bin')

export PATH
