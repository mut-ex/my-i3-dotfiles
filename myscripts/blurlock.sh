#!/bin/bash
# scrot ~/.cache/blurlock/screenshot.jpg
# convert -scale 10% -blur 0x5 -resize 1000% ~/.cache/blurlock/screenshot.jpg ~/.cache/blurlock/screenshot-blurred.png
i3lock -i ~/.cache/blurlock/screenshot-blurred.png
