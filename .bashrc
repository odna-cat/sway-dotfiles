#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# ALIASES
alias nnn='nnn -d -e -H -r'
alias vim='nvim'
alias bye='poweroff'
alias cya='reboot'

# set environment variables
export XDG_CURRENT_DESKTOP=Sway
export BROWSER='/usr/bin/librewolf' # Default browser
export EDITOR='/usr/bin/nvim'

# nnn
nnn_cd() {
  if ! [ -z "$NNN_PIPE" ]; then
    printf "%s\0" "0c${PWD}" ! >"${NNN_PIPE}" &
  fi
}

trap nnn_cd EXIT

# nnn plugins
export NNN_PLUG='v:imgview;d:dragdrop;p:preview-tui;f:finder;v:imgview;o:fzopen'
export NNN_FIFO=/tmp/nnn.fifo

# PATH
export PATH="/home/odna/.cargo/bin:$PATH"

# # wal STUFF
source ~/.cache/wal/colors-tty.sh
(cat ~/.cache/wal/sequences &)

# # To add support for TTYs this line can be optionally added.
# source ~/.cache/wal/colors-tty.sh

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
alias config='/usr/bin/git --git-dir=/home/odna/.cfg/ --work-tree=/home/odna'

export PATH=$PATH:/home/odna/.spicetify
alias config='/usr/bin/git --git-dir=/home/odna/.cfg/ --work-tree=/home/odna'
