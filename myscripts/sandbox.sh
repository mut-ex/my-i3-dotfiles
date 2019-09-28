#!/bin/zsh
echo "Hello World"

if xrandr --verbose | grep -w -q "DP-1-1 connected"; then
	echo "Yes!"
else
	echo "No :("
fi
