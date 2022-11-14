#! /bin/bash

# 
alias notes="code ~/git/dendron"
# Docker
alias dps="docker ps"
alias dsp="docker system prune"

alias e=emacs -nw
alias v=nvim
alias wfo=windscribe firewall on
alias wfa=windscribe firewall auto
alias scrape=wget -H -r --level=5 --restrict-file-names=windows --convert-links -e robots=off
alias gac=git add -A && git commit -m
alias restart_plasma=killall plasmashell && kstart5 plasmashell && killall krunner
alias inbuilt_keyboard=setxkbmap -layout de-latin1
alias thinkpad_keyboard=setxkbmap -layout us -variant de_se_fi
alias fnd=find ./ -name
