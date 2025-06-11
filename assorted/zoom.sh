#!/bin/sh

if [ ! "$@" = "" ]
then
	ZOOM=$@
else
	echo "limited to 0.5-1.5"
	read -p "zoom factor: " ZOOM
fi
if [ "$ZOOM" = "" ]
then
	echo "canceled"
	return
elif [ 1 -eq $(echo "$ZOOM < 0.5" | bc) -o 1 -eq $(echo "$ZOOM > 1.5" | bc ) ]; then
	echo "zoom outside valid range of 0.5-1.5, do better"
	return
fi
A=1
B=0
C=0
D=0
E=1
F=0
G=0
H=0
I=$ZOOM
xrandr --output eDP --transform $A,$B,$C,$D,$E,$F,$G,$H,$I
clear
