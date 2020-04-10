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
brew cask install basictex
which pdflatex
pdflatex
bash --login
pdflatex
# add to ~/.zshrc: alias pdflatex="/Library/TeX/texbin/pdflatex"


# xcode
xcode-select -p
sudo xcodebuild -license
softwareupdate --install -a
xcode-select --install


# opencv
brew install cmake pkg-config
brew install jpeg libpng libtiff openexr
brew install eigen tbb
brew install wget
wget https://bootstrap.pypa.io/get-pip.py
pip3 install virtualenv virtualenvwrapper
rm -rf ~/get-pip.py ~/.cache/pip

easy_install pip
pip install virtualenvwrapper
pip install --upgrade virtualenvwrapper

mkvirtualenv cv -p python3
pip install numpy
brew install qt5
conda install matplotlib

cd opencv
mkdir build
cd build
cmake ..
make
sudo make install



# tensorflow
pip install tensorflow



# heroku cli
brew tap heroku/brew && brew install heroku


# ngrok
brew cask install ngrok
# ngrok authtoken <token>
# ngrok tcp 27182
# ngrok http 5000


# scala
brew install scala


# mac vim
brew install macvim







cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
    -D PYTHON3_LIBRARY=$CONDA_HOME/envs/cv/lib/libpython3.7m.dylib \
    -D PYTHON3_INCLUDE_DIR=$CONDA_HOME/envs/cv/include/python3.7m \
    -D PYTHON3_EXECUTABLE=$CONDA_HOME/envs/cv/bin/python \
    -D PYTHON3_PACKAGES_PATH=$CONDA_HOME/envs/cv/lib/python3.7/site-packages \
    -D BUILD_opencv_python2=OFF \
    -D BUILD_opencv_python3=ON \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D INSTALL_C_EXAMPLES=OFF \
    -D OPENCV_ENABLE_NONFREE=ON \ # this enables SIFT, SURF, et al
    -D BUILD_EXAMPLES=ON .. # yes the dots are real














source ~/.bash_profile
source ~/.zshrc

echo ""
echo "done. "
echo ""
