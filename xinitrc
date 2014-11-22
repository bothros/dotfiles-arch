#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Run xmodmap to swap ESC and Caps Lock
if [ -f ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

# Run xrdb for urxvt settings
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Start i3
exec i3
