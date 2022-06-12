#!/usr/bin/zsh
BRIGHTGET=$(brightnessctl get)
CUR=$(($BRIGHTGET*100/255))
print -P "%B%F{166} Screen ${CUR}%%%f%b"