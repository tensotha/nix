
#### Change "~/Downloads/wallpapers/" to the folder/directory you keep you wallpaper images.

wall=$(find ~/.config/wallpapers/ -name "*.jpg" -o -name "*.png" -o -name "*.gif" | shuf -n 1)
# Picks background wallpaper
swww img $wall


# generate color scheme
wal -c
wal -i $wall


# Enable this (by removing the # next to pywalfox update) if you use firefox AND downloaded the pywalfox extension and installed repository.
# pywalfox update


# Deletes the sww cache
rm -rf $HOME/.cache/swww
