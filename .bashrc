#
# ~/.bashrc
#

# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

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

# Line wrap on window resize
shopt -s checkwinsize

# Disable completion when the input buffer is empty.  i.e. Hitting tab
# and waiting a long time for bash to expand all of $PATH.
shopt -s no_empty_cmd_completion

# cd para uma pasta digitando apenas o nome da pasta
shopt -s autocd

# Apertar TAB para circular entre possíveis opções para a entrada
test -n '$PS1' && bind TAB:menu-complete

#Não diferenciar entre maíusculas e minúsculas ao usar o TAB completion
bind "set completion-ignore-case on"

# Prompt do terminal
export PS1="[\[$(tput sgr0)\]\[\033[38;5;25m\]\A\[$(tput sgr0)\]][\[$(tput sgr0)\]\[\033[38;5;25m\]\u@\h\[$(tput sgr0)\] em \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;33m\]\w\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"

#PS1='[\u@\h em \W]\$ '

# Exports úteis
export EDITOR="/usr/bin/nano"
export VISUAL="/usr/bin/nano"
export QT_QPA_PLATFORMTHEME="gnome"

# Cores no less
export LESS="--RAW-CONTROL-CHARS"
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

# Aliases úteis
alias rm="rm -i"
alias ..='cd ..'
alias ...='cd ...'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias mkdir='mkdir -pv'
alias diff='diff --color=auto'
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
