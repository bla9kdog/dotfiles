
sketchybar --add item slack right                          \
           --set slack script="$PLUGIN_DIR/slack.sh"       \
                      icon.font="$FONT_BRANDS_ICON:16.0"    \
                      label.font="$FONT_NOTIFICATION"      \
                      label.y_offset=6                     \
                      label.background.color=0xffff0000    \
                      label.background.corner_radius=30    \
                      label.padding_left=4                 \
                      label.padding_right=4                \
                      label.background.height=12           \
                      label.background.y_offset=5          \
                      label.align=center                   \
                      icon.padding_right=-6                \
                      update_freq=2                        \
           --subscribe slack system_woke


