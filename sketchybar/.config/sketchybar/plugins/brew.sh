#!/usr/bin/env zsh

COUNT=$(brew outdated --quiet | wc -l | tr -d " ")
if [ "$COUNT" -gt "0" ]; then
    sketchybar --set $NAME label="$COUNT" icon= \
    icon.drawing=on \
    label.drawing=on \
    background.padding_right=12
else
sketchybar --set $NAME label="$COUNT" icon= \
    icon.drawing=off \
    label.drawing=off \
    background.padding_left=0 \
    background.padding_right=0
fi
