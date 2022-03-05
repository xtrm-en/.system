#!/bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar --config=/home/xtrm/.config/polybar/config.ini xtrm &
echo "Launched Polybar [xtrm]"
