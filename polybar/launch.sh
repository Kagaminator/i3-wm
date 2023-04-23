#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

desktop=$(echo $DESKTOP_SESSION)

case $desktop in
    i3)
    if type "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	if [ $m == 'HDMI-0' ] 
	then		
		MONITOR=$m polybar --reload primary -c ~/.config/polybar/config.ini &	
	elif [ $m == 'DVI-I-0' ]
	then
		MONITOR=$m polybar --reload secondary -c ~/.config/polybar/config.ini &
	fi
      done
    else
    polybar --reload primary -c ~/.config/polybar/config.ini &
    fi
    ;;
esac
