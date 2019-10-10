#!/bin/zsh

wal -i $1 -q
sleep 0.5
~/Cloned/warnai/warnai -g fantome -n --wal
