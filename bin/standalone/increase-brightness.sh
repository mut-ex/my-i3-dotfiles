#!/bin/zsh

CURR_BRIGHTNESS="$(cat /sys/class/backlight/intel_backlight/brightness)"
echo $CURR_BRIGHTNESS

NEW_BRIGHTNESS=0

if [[ $CURR_BRIGHTNESS -lt 927 ]]; then
	NEW_BRIGHTNESS=$((CURR_BRIGHTNESS + 10))
	echo $NEW_BRIGHTNESS | tee /sys/class/backlight/intel_backlight/brightness
fi