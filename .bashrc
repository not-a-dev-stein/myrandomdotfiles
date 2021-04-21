#
# ~/.bashrc
#

# Remove entradas duplicadas no bash_history
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

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
PS1='[\u@\h em \e[0;34m\W\e[0m]\$ '

# Aliases úteis
alias ..='cd ..'
alias ...='cd ...'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias mkd='mkdir -pv'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='ls -a --color=auto --group-directories-first'
# ---------------------------
alias clean='paru -Sc && paru -c'
# ---------------------------
alias yt='youtube-dl -ic'

# Rodar o pfetch
pfetch
