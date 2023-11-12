#!/usr/bin/env sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

sketchybar --set $NAME background.drawing=$SELECTED

if [ "$SELECTED" = "true" ]; then
  sketchybar -m --set $NAME icon.color=0xddffffff background.drawing=off
else
  sketchybar -m --set $NAME icon.highlight=off icon.color=0x80ffffff background.drawing=off
fi
