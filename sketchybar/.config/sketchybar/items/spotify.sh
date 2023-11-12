SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"

sketchybar --add item spotify right                       \
           --set spotify                                  \
                       script="$PLUGIN_DIR/spotify.sh"    \
                       background.padding_right=12        \
                       label.drawing=off                  \
                       label.padding_left=3               \
           --add event spotify_change $SPOTIFY_EVENT      \
           --subscribe spotify spotify_change             \
