#!/bin/bash

rootDir="$(dirname $0)"
cd $rootDir

# brew needs to be first so brew bundle can run
sh ./brew/install.sh
brew bundle


# finder
 defaults write com.apple.Finder AppleShowAllFiles true

# fonts
rsync -aP "$HOME/.dotfiles/system/fonts/" "$HOME/Library/Fonts/"
# install solarized theme into terminal
# set font on theme preferences to -> FuraCode Nerd Font - Retina - 14


# install all the things
sh ./node/install.sh

# link zshrc as not actively using it yet
src="$HOME/.dotfiles/system/zshrc.symlink"
dst="$HOME/.$(basename "${src%.*}")"
[ -e "$dst" -o -L "$dst" ] && mv $dst $dst"-backup"$(date +"%Y%m%d%H%M%S")
ln -s $src $dst

# set shell to default to zsh
chsh -s /bin/zsh