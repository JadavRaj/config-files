#!/bin/sh

CARD="amdgpu_bl0"
SYS_DIR="/sys/class/backlight/$CARD"

MAX=$(cat "$SYS_DIR/max_brightness")
CURR=$(cat "$SYS_DIR/brightness")
STEP=$((MAX / 20)) # 5% of max brightness

if [ "$1" = "up" ]; then
    NEW=$((CURR + STEP))
    [ "$NEW" -gt "$MAX" ] && NEW=$MAX
elif [ "$1" = "down" ]; then
    NEW=$((CURR - STEP))
    [ "$NEW" -lt 0 ] && NEW=0
fi

echo "$NEW" > "$SYS_DIR/brightness"


