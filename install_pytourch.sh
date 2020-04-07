#!/bin/sh


# https://pytorch.org/get-started/locally/#macos-version

brew install cmake

# python3 anaconda
brew cask install anaconda
echo "export PATH="/usr/local/anaconda3/bin:$PATH"" >> ~/.zshrc
source ~/.zshrc
jupyter notebook


# pytourch
# conda install pytorch torchvision -c pytorch
pip3 install torch torchvision
