#!/usr/bin/env sh

TEXT=$(sqlite3 ~/Library/Messages/chat.db "SELECT text FROM message WHERE is_read=0 AND is_from_me=0 AND text!='' AND date_read=0" | wc -l | awk '{$1=$1};1')

if [ "$TEXT" -gt "0" ]; then
    sketchybar --set $NAME label="$TEXT" icon= \
    icon.drawing=on                                     \
    label.drawing=on                                    \
    background.padding_right=12

  else
    sketchybar --set $NAME label="$TEXT" icon= \
    icon.drawing=off                                    \
    label.drawing=off                                   \
    background.padding_left=0                           \
    background.padding_right=0
  fi

sketchybar --set $NAME label="${TEXT}" \
	   --set $NAME click_script="/usr/bin/open /System/Applications/Messages.app"

