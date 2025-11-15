NEW_WP=$(ls $HOME/Images/Wallpapers | shuf -n 1)

WALLPAPER="$HOME/Images/Wallpapers/$NEW_WP"

HYPRPAPER_CONF="$HOME/.conf/hypr/hyprpaper.conf"

echo " " > $HYPRPAPER_CONF

echo "preload = $WALLPAPER" >> $HYPRPAPER_CONF
echo "wallpaper = eDP-1, $WALLPAPER" >> $HYPRPAPER_CONF
echo "splash = false" >> $HYPRPAPER_CONF

killall hyprpaper
hyprpaper &
