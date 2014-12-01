#!/bin/bash

for FILE in "$@"; do
    if [ -e "$FILE" ]; then
        RESOLUTION=`feh -L %wx%h "$FILE"`
        #echo "$RESOLUTION"
        tmsu tag --tags="wallpaper resolution=$RESOLUTION" "$FILE"
    fi
done
