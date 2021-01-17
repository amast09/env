WORKING_DIR=$(dirname "$0")

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

alias ll='ls -aFhlG'
alias c='clear'
alias vim="vim -u $WORKING_DIR/.vimrc"

#color prompt
green="\e[32m";
yellow="\e[33m";
red="\e[31m";
cyan="\e[36m";
blue="\e[34m";
norm="\e[0m";

# Make history command include timestamp
HISTTIMEFORMAT="%F %T "

# Find and set branch name var if in git repository.
git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
   :
  elif [ -z "$(git status --porcelain)" ]; 
  then
   echo '('$branch')'
  else
   echo '('$branch'*)'
  fi
}

# Linux Bash
export PS1='\[$green\]\u@\h:\[$red\]\w\[$cyan\]$(git_branch_name)\[$norm\]$ '

# ZSH MacOS
set -o PROMPT_SUBST
PROMPT='%F{magenta}%T%f-%F{green}%n%f%F{green}@%f%F{green}%m%f:%F{red}%d%f%F{blue}$(git_branch_name)%f$ '

