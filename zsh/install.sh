#!/usr/bin/env bash

echo installing oh-my-zsh...
sh oh-my-zsh.sh
if [ $? -ne 0 ]; then
	exit 1
fi

echo backup and copying zsh configs...
cp chilee.zsh-theme $HOME/.oh-my-zsh/custom/themes
cp custom.zsh $HOME/.oh-my-zsh/custom
cp zshrc $HOME/.zshrc
