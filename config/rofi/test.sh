#!/bin/bash

options="Option1/Option2/Option3"

chosen=$(echo -e "$options" | rofi -dmenu -p "Choose:")

case "$shosen" in
	Option1)
		notify-send "1"
		;;
	Option2)
		notify-send "2"
		;;
	Option3)
		notify-send "3"
		;;
esac
