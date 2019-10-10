#!/bin/bash

rofi_command="rofi -theme ~/.cache/wal/workspaceswitcher-theme.rasi"

### Options ###
home=""
internet="爵"
coding=""
design=""
files="ﱮ"
messaging=""
video="ﳜ"
torrents=""
email="﫯"
# Variable passed to rofi
options="$home\n$internet\n$coding\n$design\n$files\n$messaging\n$video\n$torrents\n$email"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 4)"
case $chosen in

    $home)
        i3-msg workspace 1
        ;;

    $internet)
        i3-msg workspace 2
        ;;

    $coding)
        i3-msg workspace 3
        ;;

    $design)
        i3-msg workspace 4
        ;;

    $files)
        i3-msg workspace 5
        ;;

    $messaging)
        i3-msg workspace 6
        ;;

    $video)
        i3-msg workspace 7
        ;;

    $torrents)
        i3-msg workspace 8
        ;;

    $email)
        i3-msg workspace 9
        ;;

esac


