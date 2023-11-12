sketchybar --add item battery right                                                                    \
           --set battery                                                                               \
                         script="$PLUGIN_DIR/battery.sh"                                               \
                         update_freq=10                                                                \
                         background.padding_right=12                                                   \
                         click_script="/usr/bin/open /System/Library/PreferencePanes/Battery.prefPane" \
           --subscribe battery system_woke                                                             \

