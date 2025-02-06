#!/bin/sh

# Function declarations
webrun(){
	wget -qO - $1 | sh
}
BASEURL="https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master"
# Main program
echo -n 'Hello and welcome to this framework for treachery, built by the Goblin himself, for your execution pleasure. within you will find many "useful" options, available to you through just a few command-line arguments.'"\n\n"
INPUT="$@"
if [ ! -n "${INPUT}" ]
then
	echo -n "Please provide your choice of treachery: "
	read INPUT
	echo ""
fi

case "${INPUT}" in
	"list")
		echo -n "available options are as follows:
	'list' displays this list
	'forked bom' summons a bunch of forks in terminals
	'forkbomb' does an actual forkbomb, use with caution
	'gif' gives you the choice between several different ascii gifs to display in terminal
	'parrot' displays a disco parrot in the terminal"
		;;
	"forked bom")
		echo -n "Forked bom chosen\n"
		webrun ${BASEURL}/assorted/forked_bom/deploy_fork_bom.sh
	;;
	"forkbomb")
		echo -n "Forkbomb chosen\n"
		webru ${BASEURL}/assorted/forkbomb.sh
	;;
	"gif")
		echo -n "Gif chosen\n"
		webrun ${BASEURL}/assorted/gif.sh
	;;
	"parrot")
		echo -n "Parrot chosen\n"
		webrun ${BASEURL}/assorted/parrot.sh
	;;
	*)
		if [ -n "${INPUT}" ]
		then
			echo -n "'${INPUT}' not found\n"
		fi
		echo -n "Treachery canceled\n"
esac
