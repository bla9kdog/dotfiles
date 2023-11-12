SPACE_ICONS=("" "" "" "" "" "" "" "" "")

for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+1))
  sketchybar --add space space.$sid left                                     \
             --set space.$sid associated_space=$sid                          \
                              icon=${SPACE_ICONS[i]}                         \
                              icon.padding_left=8                            \
                              icon.padding_right=8                           \
                              background.padding_left=5                      \
                              background.padding_right=5                     \
                              background.color=0x00ffffff                    \
                              background.corner_radius=5                     \
                              background.height=22                           \
                              background.drawing=off                         \
                              label.drawing=off                              \
                              script="$PLUGIN_DIR/space.sh"                  \
                              click_script="yabai -m space --focus $sid"     
done

sketchybar --add item space_separator left                                   \
           --set space_separator icon=                                      \
                                 background.padding_left=5                   \
                                 background.padding_right=15                 \
                                 label.drawing=off                           \
                                                                             \
           --add item front_app  left                                        \
           --set front_app       script="$PLUGIN_DIR/front_app.sh"           \
                                 icon.drawing=off                            \
           --subscribe front_app front_app_switched                          
