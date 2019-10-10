#!/bin/zsh
pkill -15 -f takeabreak.py
sleep 1
polybar-msg hook takeabreak 3
