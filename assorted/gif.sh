#!/bin/sh

gif(){
	curl -s ascii.live/${1}
}

OPTIONS=`gif list | cut -f 2 -d ':' | tr -d '"[]}' | tr ',' "\n" | cat -n`

printf "${OPTIONS}\nNumeric input: "
read CHOICE
CHOICE="${CHOICE}"
if [ ! -n "`printf "${OPTIONS}\n" | awk '{print $1}' | grep -Ee "^${CHOICE}$"`" ]
then
	GIF=`printf "${OPTIONS}\n" | awk '{print $2}' | grep -Ee "${CHOICE}" | head -n 1`
	if [ ! -n "${GIF}" ]
	then
		echo "i dont have that one..."
	else
		echo "ah, ${GIF}, a fine choice"
		gif "${GIF}"
	fi
else
	GIF=`printf "${OPTIONS}" | head -n ${CHOICE} | tail -n 1 | awk '{ print $2 }'`
	echo "ah, ${GIF}, a fine choice"
	gif "${GIF}"
fi
