#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c $HOME/BSPWM-Project/Polybar-Testing/config.ini &


#!/usr/bin/env bash

# Terminate already running bar instances
#killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar black >>/tmp/polybar1.log 2>&1 & disown
#polybar top-panel >>/tmp/polybar2.log 2>&1 & disown

#echo "Bars launched..."


#!/usr/bin/env bash

# Terminate already running bar instances
#killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar black >>/tmp/polybar1.log 2>&1 & disown
#polybar top-panel >>/tmp/polybar2.log 2>&1 & disown

#echo "Bars launched..."



# Terminate already running bar instances
#killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar example >>/tmp/polybar1.log 2>&1 & disown

#echo "Bars launched..."
