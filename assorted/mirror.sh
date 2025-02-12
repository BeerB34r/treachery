#!/bin/sh
flip(){
	if [ ! "$@" = "" ]
	then
		FLIP=$@
	else
		echo "available options are 'normal' 'x' 'y' or 'xy'"
		read -p "reflection axes: " FLIP
	fi
	if [ "${FLIP}" = "" ]
	then
		echo "canceled"
		return
	fi
	if [ "${FLIP}" = "normal" -o "${FLIP}" = "x" -o "${FLIP}" = "y" -o "${FLIP}" = "xy" ]
	then
		xrandr --output eDP --reflect ${FLIP}
		clear
		return
	fi
	if [ ! "$@" = "" ] ; then return ; fi
	flip
}
flip $@
