#!/bin/sh

picom & # compositor

# WM Stuff
/bin/bash ~/.config/polybar/launch.sh & # b a r

# Autostart '.desktop' files
dex -a

# Polkit Manager
lxsession &

# Background
feh --bg-fill ~/pics/background.jpg

# Other utilities
unclutter --timeout 3 &
