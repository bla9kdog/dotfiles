#!/usr/bin/env sh

sketchybar --set $NAME label="$(date '+%a %b %e %H:%M')" click_script="/usr/bin/open /System/Library/PreferencePanes/DateAndTime.prefPane"

