#!/usr/bin/env python3
import i3ipc


def on_focus(i3, e):
    i3.command('[class=".*"] border none')
    i3.command('border pixel 1')


i3 = i3ipc.Connection()
i3.on('window::focus', on_focus)
i3.main()
