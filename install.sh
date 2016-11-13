#!/bin/bash

rootDir="$(dirname $0)"
cd $rootDir

# install all the things
sh ./brew/install.sh

brew bundle
