#!/bin/bash



# Terminate already running bar instances

killall -q polybar



# Wait until the processes have been shut down

while pgrep -u $UID -x polybar >/dev/null; do sleep 0.1; done



# Launch bar
for m in $(polybar --list-monitors | cut -d":" -f1); do
		export MONITOR=$m 
		polybar --reload upper &
		polybar --reload white &
done


echo "Bars launched..."


