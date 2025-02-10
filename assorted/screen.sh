#!/bin/sh

echo "Options:
	0 | normal
	1 | left
	2 | inverted
	3 | right"

read -p "Choice: " CHOICE
OPTIONS='0 1 2 3 normal left inverted right'
CHOSEN=`printf "${OPTIONS}\n" | tr ' ' "\n" | grep -Ee "^${CHOICE}"`
if [ ! -n "${CHOSEN}" ]
then
	echo "Option not found"
else
	echo "Doing option ${CHOSEN}"
	xrandr -o ${CHOSEN}
	clear
fi
