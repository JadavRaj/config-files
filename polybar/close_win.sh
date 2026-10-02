#!/bin/bash
# 1. Get the active window title
TITLE=$(xdotool getwindowfocus getwindowname)

# 2. Ask user for confirmation via Rofi
CHOICE=$(echo -e "Yes\nNo" | rofi -dmenu -p "Close $TITLE?")

# 3. Kill the window if they select Yes
if [ "$CHOICE" = "Yes" ]; then
    xdotool getwindowfocus windowkill
fi
