WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$WORKING_DIR/.git-completion.bash"
source "$WORKING_DIR/.git-prompt.sh"

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export LSCOLORS=dxfxcxdxbxegedabagacad
export TESSDATA_PREFIX=/Users/amast/Repositories/OCRServer

alias ll='ls -aFhlG'
alias rls='ls'
alias c='clear'

#color prompt
green="\e[1;32m";
yellow="\e[1;33m";
red="\e[1;31m";
cyan="\e[1;36m";
blue="\e[1;34m";
norm="\e[0m";

ln -s "$WORKING_DIR/.vimrc" "$HOME/.vimrc"
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1

gitBranch='$(__git_ps1 "[%s]")'
export PS1="\u@\h:\[$red\]\w\[$cyan\]$gitBranch\[$norm\]$ "
