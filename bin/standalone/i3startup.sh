#!/bin/zsh

# Load Nvidia settings
(sh -c "/usr/bin/nvidia-settings --load-config-only")&
echo "Loaded nvidia settings"

# Start pulse audio
start-pulseaudio-x11&
echo "Started pulseaudio"

# Set-up the displays...
if xrandr --verbose | grep -w -q "DP-1-1 connected"; then
	echo "External display detected"

	# xrandr --newmode "2560x1440_120.00"  661.25  2560 2784 3064 3568  1440 1443 1448 1545 -hsync +vsync
	# xrandr --addmode eDP-1-1 2560x1440_120.00

	# xrandr --output eDP-1-1 --mode 2560x1440_120.00 --output DP-1-1 --preferred  --pos 0x0
	xrandr --output HDMI-1-1 --off --output eDP-1-1 --off --output DP-1 --off --output HDMI-0 --off --output DP-1-1 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-0 --off


else
	xrandr --newmode "2560x1440_120.00"  661.25  2560 2784 3064 3568  1440 1443 1448 1545 -hsync +vsync
	xrandr --addmode eDP-1-1 2560x1440_120.00

	xrandr --output eDP-1-1 --mode 2560x1440_120.00
fi

# nitrogen --restore &
wal -R

source ~/.cache/wal/colors.sh
hsetroot -solid "$background"

polybar top &

compton &

redshift&
