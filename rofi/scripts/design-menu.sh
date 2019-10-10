#!/bin/bash

rofi_command="rofi -theme ~/.config/rofi/design-menu-theme.rasi"

### Options ###
gimp=""
rawtherapee="爵"

# Variable passed to rofi
options="$gimp\n$rawtherapee"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 1)"
case $chosen in

    $gimp)
        gimp-2.10&
        ;;

    $rawtherapee)
        rawtherapee&
        ;;

esac


