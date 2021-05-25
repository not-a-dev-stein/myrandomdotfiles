#
# ~/.bashrc
#

# Remove entradas duplicadas no bash_history
HISTCONTROL=ignoredups:erasedups
HISTSIZE=10000
shopt -s histappend
shopt -s cmdhist
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

# Permite apertar a seta p/ cima para buscar comandos anteriores baseado no que foi digitado
INPUTRC=~/.inputrc

# Desabilitar a pausa do terminal (ctrl+S e ctrl+Q)
stty -ixon

# cd para uma pasta digitando apenas o nome da pasta
shopt -s autocd

# Apertar TAB para circular entre possíveis opções para a entrada
test -n '$PS1' && bind TAB:menu-complete

#Não diferenciar entre maíusculas e minúsculas ao usar o TAB completion
bind "set completion-ignore-case on"

# Se não estiver rodando de maneira interativa, não fazer nada
[[ $- != *i* ]] && return

# Prompt do terminal
PS1='[\u@\h em \W]\$ '

# Exports úteis
export EDITOR="/usr/bin/micro"
export VISUAL="/usr/bin/micro"
export QT_QPA_PLATFORMTHEME="gnome"

# Aliases úteis
alias rm="rm -i"
alias ..='cd ..'
alias ...='cd ...'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='ls -a --color=auto --group-directories-first'
# ---------------------------
alias upd='paru -Syu && flatpak update'
alias gdm-config='machinectl shell gdm@ /bin/bash'
alias clean='paru -Sc && paru -c && flatpak uninstall --unused'
alias mkp='makepkg -si PKGBUILD'
# ---------------------------
alias yt='youtube-dl -ic'
alias pipefix='amixer -c0 sset "Front" 87 && amixer -c0 sset "Bass Speaker" 87'

# Rodar a ferramenta de fetch do sistema
macchina
