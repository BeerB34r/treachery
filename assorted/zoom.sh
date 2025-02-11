#!/bin/sh

if [ ! "$@" = "" ]
then
	ZOOM=$@
else
	read -p "zoom factor: " ZOOM
fi
if [ "$ZOOM" = "" ]
then
	echo "canceled"
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
