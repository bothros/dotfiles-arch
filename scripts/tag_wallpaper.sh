#!/bin/bash

WALLPAPER=`$HOME/random_wallpaper/rw_current.py $1`
OLD_TAGS=`tmsu tags $WALLPAPER | tr '\n' ' '`
TAGS=`zenity --entry --text "Tags for $WALLPAPER, separated by spaces. (You probably don't want to remove 'wallpaper'.)" --entry-text "$OLD_TAGS"`
if [ -n "$TAGS" ]; then
    tmsu untag --all $WALLPAPER
    tmsu tag --tags="$TAGS" $WALLPAPER
fi
