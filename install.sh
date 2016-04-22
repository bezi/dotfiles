#!/bin/bash
# @file install.sh
# @brief In theory, install all the stuff in this directory.  It's never that easy though :(.
# @author Oscar Bezi (oscar@bezi.io)

set -e;

cd ~/;

# Download and install RCM
FILE="rcm_1.2.3-1_all.deb";
wget https://thoughtbot.github.io/rcm/debs/${FILE};
sudo dpkg -i ${FILE};
rm ${FILE};

git clone https://github.com/bezi/dotfiles.git ~/.dotfiles;
cd .dotfiles;
export RCRC=`pwd`/rcrc; # make rcm use the rcrc you just downloaded for now.
git submodule update --init --recursive; # get submodules

rcup;
