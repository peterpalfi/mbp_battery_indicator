#!/usr/bin/env bash

CF=$(cat /sys/class/power_supply/BAT0/charge_full)
CN=$(cat /sys/class/power_supply/BAT0/charge_now)

LC_NUMERIC="en_US.UTF-8" printf "%.1f %%" $(echo "($CN / $CF)*100" | bc -l)
