#!/bin/zsh

(sh -c "/usr/bin/nvidia-settings --load-config-only")&
echo "Loaded nvidia settings"

start-pulseaudio-x11&
echo "Started pulseaudio"

~/myscripts/spotify/launchlistener.sh&


~/tmp/xrandr-master/xrandr --newmode "2560x1440_120.00"  661.25  2560 2784 3064 3568  1440 1443 1448 1545 -hsync +vsync

~/tmp/xrandr-master/xrandr --addmode eDP-1-1 2560x1440_120.00

if xrandr --verbose | grep -w -q "DP-1-1 connected"; then
	echo "External display detected"

	~/tmp/xrandr-master/xrandr --output eDP-1-1 --mode 2560x1440_120.00 --pos 2560x0 --output DP-1-1 --preferred

	echo "Configured displays..."

	polybar top&
	polybar bottom&

	polybar top-ext&
	polybar bottom-ext&
	echo "Polybars launched..."


else
	~/tmp/xrandr-master/xrandr --output eDP-1-1 --mode 2560x1440_120.00

	echo "Configured display..."


	polybar top&
	polybar bottom&
	echo "Polybars launched..."

fi

nitrogen --restore

echo "Wallpaper restored..."

compton&

echo "Compton launched..."

redshift&
echo "Started redshift"



