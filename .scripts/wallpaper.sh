#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapersniri" //ваш путь до папки с обоями

LINK_PATH="$HOME/.config/niri/current_wallpaper"

WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | wofi --dmenu --prompt="Выбери обои")

if [ -n "$WALLPAPER" ]; then
    ln -sf "$WALLPAPER" "$LINK_PATH"
    swaybg -i "$WALLPAPER" -m fill
fi
