#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa -T -L 1 -a'
#alias exa='exa -T -L 2 -a'
alias claer='clear'

alias vi='nvim'
alias vim='nvim'
alias hx='helix'
alias br='br -h'
alias glt='git log --oneline --decorate --graph --all'
alias glta='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
alias osync='rsync -av --progress --delete /home/dev/Documents/yggdrasil/ /mnt/c/Users/sgodi/Documents/vaults/Yggdrasil/'

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

eval "$(starship init bash)"

# source /home/sgodilla/.config/broot/launcher/bash/br

# Created by `pipx` on 2023-11-07 16:06:37
export PATH="$PATH:/home/sgodilla/.local/bin"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
