sketchybar --add item mail right                            \
           --set mail script="$PLUGIN_DIR/mail.sh"          \
                      background.padding_right=12           \
                      icon.font="$FONT_ICON:16.0"           \
                      label.font="$FONT_NOTIFICATION"       \
                      label.y_offset=6                      \
                      label.background.color=0xffc9124f     \
                      label.background.corner_radius=30     \
                      label.padding_left=4                  \
                      label.padding_right=4                 \
                      label.background.height=14            \
                      label.background.y_offset=5           \
                      label.align=center                    \
                      icon.padding_right=-6                 \
                      update_freq=2                         \
           --subscribe mail system_woke
