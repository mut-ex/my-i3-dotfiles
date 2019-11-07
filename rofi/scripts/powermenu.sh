#!/bin/bash
scrot -q 50 ~/.cache/blurlock/screenshot.jpg
convert -scale 10% -blur 0x5 -resize 1000% ~/.cache/blurlock/screenshot.jpg ~/.cache/blurlock/screenshot-blurred.png

rofi_command="rofi -theme ~/.cache/wal/powermenu-theme.rasi"

### Options ###
power_off="襤  "
reboot="  ﰇ"
lock="  "
suspend="鈴  "
log_out="  "
# Variable passed to rofi
options="$power_off\n$reboot\n$lock\n$suspend\n$log_out"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $power_off)
    
         #killall sublime_text
         #sleep 1
         #rm -r Local/*
    	 systemctl poweroff
        ;;
    $reboot)
         #killall sublime_text
         #sleep 1
         #rm -r Local/*
         systemctl reboot
        ;;
    $lock)
        ~/bin/standalone/blurlock.sh
        ;;
    $suspend)
        ~/bin/standalone/blurlock.sh && systemctl suspend
        ;;
    $log_out)
         #killall sublime_text
         #sleep 1
         #rm -r Local/*
        i3-msg exit
        ;;
esac


