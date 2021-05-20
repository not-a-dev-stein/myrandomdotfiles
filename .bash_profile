#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Exports úteis

export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"
export XDG_DATA_DIRS="/home/stein.local/share/flatpak/exports/share"
export EDITOR="/usr/bin/micro"
export VISUAL="/usr/bin/micro"
export TERM=xterm-256color
