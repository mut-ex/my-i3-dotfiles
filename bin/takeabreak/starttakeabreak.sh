#!/bin/zsh
pkill -15 -f takeabreak.py
sh -c "python3 ~/bin/takeabreak/takeabreak.py &"
