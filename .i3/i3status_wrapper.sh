#!/bin/bash

i3status -c ~/.i3/i3status.conf | while :
do
    read line
    layout=$(xkb-switch)
    brightness=$(cat /sys/class/backlight/acpi_video0/brightness)
    echo "  $layout |  ${brightness}% | $line" || exit 1
done
