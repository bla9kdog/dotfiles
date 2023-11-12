COUNT=$(osascript -e 'tell application "Mail" to return the unread count of inbox')
if [ "$COUNT" -gt "0" ]; then
    sketchybar --set $NAME label="$COUNT" icon= \
    icon.drawing=on \
    label.drawing=on \
    background.padding_right=12
else
sketchybar --set $NAME label="$COUNT" icon=  \
    icon.drawing=off \
    label.drawing=off \
    background.padding_left=0 \
    background.padding_right=0
fi

sketchybar --set $NAME label="${COUNT}" \
	   --set $NAME click_script="/usr/bin/open /System/Applications/Mail.app"

