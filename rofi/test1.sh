#!/bin/bash

if [ -z "$1" ]; then
    echo "󰐥"
    echo ""
    echo ""
else
    case "$1" in
        "󰐥") poweroff ;;
        "") reboot ;;
        "") hyprlock > /dev/null 2>&1 & exit 0 ;;
    esac
fi
