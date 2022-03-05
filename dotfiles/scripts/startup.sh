#!/bin/sh

picom & # compositor

# WM Stuff
/bin/bash ~/.config/polybar/launch.sh & # b a r

lxsession &

unclutter --timeout 3 &
