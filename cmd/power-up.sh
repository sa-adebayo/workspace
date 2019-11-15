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

	printf "${BLUE}Checking fzf, a fast fuzzy finder...${NORMAL}\n"
	if ! command -v fzf >/dev/null 2>&1; then
		printf "${YELLOW}fzf, a fast fuzzy finder is not installed!${NORMAL} Let's install fzf first!\n"
		printf "${BLUE}Installing fzf, a fast fuzzy finder...${NORMAL}\n"
		brew install fzf
	fi

	printf "${BLUE}Checking bat, view files with syntax highlighting...${NORMAL}\n"
	if ! command -v bat >/dev/null 2>&1; then
		printf "${YELLOW}bat, view with syntax highlighting is not installed!${NORMAL} Let's install bat first!\n"
		printf "${BLUE}Installing bat, view files with syntax highlighting..${NORMAL}\n"
		brew install bat
	fi

	printf "${BLUE}Checking exa, an alternative to ls...${NORMAL}\n"
	if ! command -v exa >/dev/null 2>&1; then
		printf "${YELLOW}exa, an alternative to ls is not installed!${NORMAL} Let's install exa first!\n"
		printf "${BLUE}Installing exa, an alternative to ls..${NORMAL}\n"
		brew install exa
	fi

	printf "${BLUE}Checking fd, for finding files & directories...${NORMAL}\n"
	if ! command -v fd >/dev/null 2>&1; then
		printf "${YELLOW}fd, for finding files & directories is not installed!${NORMAL} Let's install fd first!\n"
		printf "${BLUE}Installing fd, for finding files & directories..${NORMAL}\n"
		brew install fd
	fi

	printf "${BLUE}Checking rg (ripgrep), for finding strings in files...${NORMAL}\n"
	if ! command -v rg >/dev/null 2>&1; then
		printf "${YELLOW}rg (ripgrep), for finding strings in files is not installed!${NORMAL} Let's install ripgrep first!\n"
		printf "${BLUE}Installing rg (ripgrep), for finding strings in files..${NORMAL}\n"
		brew install ripgrep
	fi

	printf "${GREEN}"
	echo ''
	echo '  ____   ___ '
	echo ' | __ \/ __ \  '
	echo ' | /_/ / / / / '
	echo ' |____/_/ /_/ '
	echo ' | |  \ \/ /   ....is now installed!'
	echo ' |_|'
	echo ''
	echo 'Now you are a command line power user...'
	echo ''
	echo ''
	printf "${NORMAL}"
}

main
