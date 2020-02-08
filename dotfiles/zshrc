# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/histfile
 
autoload -U colors && colors
PS1="%B%{$fg[green]%}%{$fg[green]%}%n%{$fg[green]%}@%{$fg[green]%}%M:%{$fg[blue]%}%~%{$fg[green]%}%{$reset_color%}$%b "
 
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
 
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.
 
# Vim mode
bindkey -v
