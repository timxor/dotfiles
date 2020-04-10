#!/bin/zsh


# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


# brew install wget
# brew cask install firefox


echo ""
echo "running mac_new_setup.sh"
echo ""


echo ""
echo "installing macvim "
echo ""



brew doctor


# psql / postgresql
brew install libpq
brew link --force libpq


# latex - pdflatex
brew cask install mactex


# scala
brew install scala


# mac vim
brew install macvim






















source ~/.bash_profile
source ~/.zshrc

echo ""
echo "done. "
echo ""
