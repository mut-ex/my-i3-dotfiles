#!/bin/zsh

(sh -c "/usr/bin/nvidia-settings --load-config-only")&
echo "Loaded nvidia settings"

start-pulseaudio-x11&
echo "Started pulseaudio"

~/myscripts/spotify/launchlistener.sh&

if xrandr --verbose | grep -w -q "DP-1-1 connected"; then
	echo "External display detected"

	xrandr --newmode "2560x1440_120.00"  661.25  2560 2784 3064 3568  1440 1443 1448 1545 -hsync +vsync
	xrandr --addmode eDP-1-1 2560x1440_120.00

	xrandr --output eDP-1-1 --mode 2560x1440_120.00 --output DP-1-1 --preferred  --pos 0x0

else
	xrandr --newmode "2560x1440_120.00"  661.25  2560 2784 3064 3568  1440 1443 1448 1545 -hsync +vsync
	xrandr --addmode eDP-1-1 2560x1440_120.00

	xrandr --output eDP-1-1 --mode 2560x1440_120.00
fi

sleep 1

compton&
echo "Compton launched..."


polybar top&
polybar bottom&

echo "Polybars launched..."

redshift&
echo "Started redshift"

# source ~/.cache/wal/colors.sh
# feh --bg-fill "$wallpaper"
