#! /bin/bash

alias notes="code ~/git/dendron"
alias vim=nvim
alias dps="docker ps"
alias dsp="docker system prune"
alias e=emacs -nw
alias v=nvim
alias wfo=windscribe firewall on
alias wfa=windscribe firewall auto
alias scrape=wget -H -r --level=5 --restrict-file-names=windows --convert-links -e robots=off
alias restart_plasma=killall plasmashell && kstart5 plasmashell && killall krunner
alias inbuilt_keyboard=setxkbmap -layout de-latin1
alias thinkpad_keyboard=setxkbmap -layout us -variant de_se_fi
alias fnd=find ./ -name


# Git
alias gac="git add -A && git commit -m"
alias gf="git fetch -a"
alias gpl="git pull"
alias gps="git push"
alias gs="git status"
alias gc="git checkout"
alias gb="git checkout -b"

# tmux

alias tma="tmux attach-session -t"
alias tmn="tmux new -s"
alias tmls="tmux list-session"
