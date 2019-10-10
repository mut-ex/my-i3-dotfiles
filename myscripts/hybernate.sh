#!/bin/bash
#scrot -q 50 /tmp/screenshot.jpg
#convert -scale 10% -blur 0x5 -resize 1000% /tmp/screenshot.jpg /tmp/screenshotblur.png 
#rm /tmp/screenshot.jpg
i3lock -i /tmp/screenshotblur.png && systemctl hibernate
