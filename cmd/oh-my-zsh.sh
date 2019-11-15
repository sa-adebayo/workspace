main() {
	# Use colors, but only if connected to a terminal, and that terminal
	# supports them.
	if which tput >/dev/null 2>&1; then
		ncolors=$(tput colors)
	fi
	if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
		RED="$(tput setaf 1)"
		GREEN="$(tput setaf 2)"
		YELLOW="$(tput setaf 3)"
		BLUE="$(tput setaf 4)"
		BOLD="$(tput bold)"
		NORMAL="$(tput sgr0)"
	else
		RED=""
		GREEN=""
		YELLOW=""
		BLUE=""
		BOLD=""
		NORMAL=""
	fi

	# Only enable exit-on-error after the non-critical colorization stuff,
	# which may fail on systems lacking tput or terminfo
	set -e

	# install command line power mode
	printf "${BLUE}Checking z, jump around...${NORMAL}\n"
	if ! command -v z >/dev/null 2>&1; then
		printf "${YELLOW}z, jump around is not installed!${NORMAL} Let's install z first!\n"
		printf "${BLUE}Installing z, jump around...${NORMAL}\n"
		brew install z
		echo '. /usr/local/etc/profile.d/z.sh' >>~/.zshrc
	fi

	printf "${BLUE}Checking z, jump around...${NORMAL}\n"
	if ! command -v z >/dev/null 2>&1; then
		printf "${YELLOW}z, jump around is not installed!${NORMAL} Let's install z first!\n"
		printf "${BLUE}Installing z, jump around...${NORMAL}\n"
		brew install z
		echo '. /usr/local/etc/profile.d/z.sh' >>~/.zshrc
	fi

	printf "${GREEN}"
	echo '         __                                     __   '
	echo '  ____  / /_     ____ ___  __  __   ____  _____/ /_  '
	echo ' / __ \/ __ \   / __ `__ \/ / / /  /_  / / ___/ __ \ '
	echo '/ /_/ / / / /  / / / / / / /_/ /    / /_(__  ) / / / '
	echo '\____/_/ /_/  /_/ /_/ /_/\__, /    /___/____/_/ /_/  '
	echo '                        /____/                       ....is now installed!'
	echo ''
	echo ''
	echo 'Please look over the ~/.zshrc file to select plugins, themes, and options.'
	echo ''
	echo 'p.s. Follow us at https://twitter.com/ohmyzsh.'
	echo ''
	echo 'p.p.s. Get stickers and t-shirts at https://shop.planetargon.com.'
	echo ''
	printf "${NORMAL}"
	# env zsh -l; don't switch to zsh
}

main
