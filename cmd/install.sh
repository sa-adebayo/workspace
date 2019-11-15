#!/usr/bin/env bash

echo installing oh-my-zsh...
sh oh-my-zsh.sh
if [ $? -ne 0 ]; then
	exit 1
fi

echo backup and copying zsh configs...
cp chilee.zsh-theme $HOME/.oh-my-zsh/custom/themes
cp custom.zsh $HOME/.oh-my-zsh/custom
if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]; then
	mv ~/.zshrc ~/.zshrc.pre-oh-my-zsh
fi
cp zshrc $HOME/.zshrc
