#!/bin/bash

# date:             04/07/2020
# file:             aws_debian_10_setup.sh
# author:           tim siwula <tim@acceptance.ai>
#
#
# build:            chmod +x aws_debian_10_setup.sh
# execute:          ./aws_debian_10_setup.sh
#
# description:      installs deps and configures debian os
#                   ...

# update and upgrade system
sudo apt update && sudo apt-get upgrade

# restart server
# sudo /sbin/reboot


# update package manager stuff
sudo apt install software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB9B1D8886F44E2A
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EA8CACC073C3DB2A
sudo add-apt-repository ppa:linuxuprising/java


# install jenv & set default java version
cd /usr/lib/jvm
jenv add /usr/lib/jvm/adoptopenjdk-8-hotspot-amd64
jenv versions
jenv global openjdk64-1.8.0.242
java -version
sudo apt install default-jre
java -version
sudo apt install default-jdk
javac -version
