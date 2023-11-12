#!/usr/bin/env sh

CURRENT_WIFI="$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I)"
SSID="$(echo "$CURRENT_WIFI" | grep -o "SSID: .*" | sed 's/^SSID: //')"
CURR_TX="$(echo "$CURRENT_WIFI" | grep -o "lastTxRate: .*" | sed 's/^lastTxRate: //')"

if [ "$SSID" = "" ]; then
  sketchybar --set $NAME label="Disconnected" icon= \
    --set $NAME click_script="/usr/bin/open /System/Library/PreferencePanes/Network.prefPane"
else
  sketchybar --set $NAME label="$SSID" icon=  \
    --set $NAME click_script="/usr/bin/open /System/Library/PreferencePanes/Network.prefPane"
fi
