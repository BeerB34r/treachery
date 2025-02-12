#!/bin/sh
if [ ! "$@" = "" ]
then
	ROT=$@
else
	echo "if you rotate past 90 degrees it gets REALLY fucky, this is disabled
i personally recommend 0.1, as its just BARELY enough to make you question your sanity"
	read -p "rotation angle: " ROT
fi
if [ "$ROT" = "" -o $ROT -gt 60 -o $ROT -lt -60 ]
then
	echo "canceled"
	return
fi
COS=$(echo "c (${ROT} * (4 * a (1) / 180))" | bc -l)
SIN=$(echo "s (${ROT} * (4 * a (1) / 180))" | bc -l)
NSIN=$(echo "-s (${ROT} * (4 * a (1) / 180))" | bc -l)
xrandr --output eDP --transform ${COS},${NSIN},0,${SIN},${COS},0,0,0,1
clear
