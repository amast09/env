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

alias ll='ls -aFhlG --color=auto'
alias rls='ls'
alias c='clear'
alias vim="vim -u $WORKING_DIR/.vimrc"

#color prompt
green="\e[32m";
yellow="\e[33m";
red="\e[31m";
cyan="\e[36m";
blue="\e[34m";
norm="\e[0m";

export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1

# Make history command include timestamp
HISTTIMEFORMAT="%F %T "

gitBranch='$(__git_ps1 "[%s]")'
export PS1="\[$green\]\u@\h:\[$red\]\w\[$cyan\]$gitBranch\[$norm\]$ "
