#!/usr/bin/env bash

if [ x"$@" = x"quit" ]
then
    exit 0
fi

if [ "$@" ]
then
    # Override the previously set prompt.
    echo -en "\x00prompt\x1fChange prompt\n"
    echo "quit"
else
    echo -en "\x00prompt\x1f\n"

    echo "Suspend"
    echo "Sleep"
    echo "Reboot"
    echo "Shutdown"

fi

