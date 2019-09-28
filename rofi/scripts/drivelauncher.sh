#!/bin/bash

rofi_command="rofi -theme drivelauncher-theme.rasi"

### Options ###
home="Home"
downloads="Downloads"
Workspace="Workspace"
drivea="sdb1"
driveb="sdb4"
# Variable passed to rofi
options="$home\n$downloads\n$Workspace\n$drivea\n$driveb"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $home)
	     nautilus -w /home/adil/
        ;;
    $downloads)
         nautilus -w /home/adil/Downloads/
        ;;
    $Workspace)
        nautilus -w /home/adil/Workspace/
        ;;
    $drivea)
        nautilus -w /mnt/sdb1
        ;;
    $driveb)
        nautilus -w /mnt/sdb4
        ;;
esac


