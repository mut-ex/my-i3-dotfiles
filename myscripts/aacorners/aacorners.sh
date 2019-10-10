#!/bin/zsh

# To get the current wallpaper
source ~/.cache/wal/colors.sh

basefilename=$(basename -- "$wallpaper")
extension="${basefilename##*.}"
filename="${basefilename%.*}"

current_workspace="$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')"
open_windows_on_workspace="$(echo "$(wmctrl -l)" | awk -F" " '{print $3}' | grep ^$current_workspace)"

#echo $current_workspace
echo $open_windows_on_workspace