#!/usr/bin/zsh
# (nitrogen --restore)&
# echo "Wallpaper reset..."

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# eDP-1-1
polybar top &
polybar bottom &
# DP-1-1
polybar top-ext &
polybar bottom-ext &
echo "Polybars relaunched..."

# Terminate compton
killall -q compton

# Wait until the processes have been shut down
while pgrep -u $UID -x compton >/dev/null; do sleep 1; done

compton &

echo "Compton relaunched..."
