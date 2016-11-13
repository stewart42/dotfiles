#!/bin/bash

rootDir="$(dirname $0)"
cd $rootDir

# brew needs to be first so brew bundle can tun
sh ./brew/install.sh
brew bundle

# install all the things
sh ./node/install.sh
