#!/bin/bash

BAT="BAT0"
AC="AC"

status=$(cat /sys/class/power_supply/$BAT/status)
capacity=$(cat /sys/class/power_supply/$BAT/capacity)
ac_online=$(cat /sys/class/power_supply/$AC/online)

# detect correct files
if [[ -f /sys/class/power_supply/$BAT/energy_now ]]; then
    now=$(cat /sys/class/power_supply/$BAT/energy_now)
    full=$(cat /sys/class/power_supply/$BAT/energy_full)
    rate=$(cat /sys/class/power_supply/$BAT/power_now)
else
    now=$(cat /sys/class/power_supply/$BAT/charge_now)
    full=$(cat /sys/class/power_supply/$BAT/charge_full)
    rate=$(cat /sys/class/power_supply/$BAT/current_now)
fi

# avoid divide-by-zero
if [[ "$rate" -eq 0 ]]; then
    echo "| BAT:  ${capacity}%"
    exit
fi

remaining_time() {
    awk -v n="$1" -v r="$2" 'BEGIN {
        t = n / r
        h = int(t)
        m = int((t - h) * 60)
        printf "%dh %dm", h, m
    }'
}

# normalize rate units (usually µW or µA → mW/mA)
rate=$(awk "BEGIN {print $rate / 1000000}")

if [[ "$ac_online" -eq 1 && "$status" != "Discharging" ]]; then
    # charging
    remaining=$(remaining_time "$((full - now))" "$rate")
    echo "| BAT:  ${capacity}% ${remaining}"
else
    # discharging
    remaining=$(remaining_time "$now" "$rate")
    echo "| BAT:  ${capacity}% ${remaining}"
fi
