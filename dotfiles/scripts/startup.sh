#!/bin/sh

# System stuff
picom & # compositor

pipewire & # audio
pipewire-pulse & # audio
wireplumber & # audio

exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & # big dumb stuff

# WM Stuff
~/.config/polybar/launch.sh & # b a r

# Applications
redshift-gtk & # e y e

# XDG Autostart
xdg-autostart-launcher --user &
