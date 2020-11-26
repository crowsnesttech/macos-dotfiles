#!/bin/bash

rm /Users/nick/.bash_profile
rm /Users/nick/.nanorc
rm /Users/nick/.oh-my-zsh
rm /Users/nick/.vimrc
rm /Users/nick/.zshrc

sleep 2

ln -s /Users/nick/Documents/git/dotfiles/macos-dotfiles/.bash_profile ~/
ln -s /Users/nick/Documents/git/dotfiles/macos-dotfiles/.nanorc ~/
ln -s /Users/nick/Documents/git/dotfiles/macos-dotfiles/.oh-my-zsh ~/
ln -s /Users/nick/Documents/git/dotfiles/macos-dotfiles/.vimrc ~/
ln -s /Users/nick/Documents/git/dotfiles/macos-dotfiles/.zshrc ~/