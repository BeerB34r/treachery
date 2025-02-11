#!/bin/sh
if [ ! "$@" = "" ]
then
	CHOICE="$@"
else
	echo "even a value of 2 is very distracting, and 0.5 is also very goblin-esque.
don't go too crazy ;P"
	read -p "Floating point brightness value: " CHOICE
fi
if [ ! -n "${CHOICE}" ]
then
	echo "Canceled"
else
	xrandr --output eDP --brightness ${CHOICE}
	clear
fi
