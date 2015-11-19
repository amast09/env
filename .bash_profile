WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$WORKING_DIR/.git-completion.bash"
source "$WORKING_DIR/.git-prompt.sh"

export LSCOLORS=dxfxcxdxbxegedabagacad
export TESSDATA_PREFIX=/Users/amast/Repositories/OCRServer

alias ll='ls -FhlG'
alias rls='ls'
alias c='clear'
alias home='cd /Users/aaron'
alias sshdev='ssh root@aaronmast.me'
alias sshprod='ssh root@poolservicemanager.com'
alias stopMeraki='sudo launchctl unload /Library/LaunchDaemons/com.meraki.agentd.plist'
alias resetSSM='bundle exec feature_randomizer -d features -m restore'
alias rwh='sh ~/Documents/remove-whitespace.sh'

#color prompt
green="\e[1;32m";
yellow="\e[1;33m";
red="\e[1;31m";
cyan="\e[1;36m";
blue="\e[1;34m";
norm="\e[0m";

export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1

gitBranch='$(__git_ps1 "[%s]")'
#export PS1='\u@\h:\w\[$blue\]$gitBranch\n\[$red\]$\[$norm\]$ '
export PS1="\u@\h:\[$red\]\w\[$cyan\]$gitBranch\[$norm\]$ "
#export PS1="\[$cyan\]\D{%l:%M:%S} \[$green\]\u@\h \[$yellow\]\w \[$blue\]$gitBranch\n\[$red\]$\[$norm\] "


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*