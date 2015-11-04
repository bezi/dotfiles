# @file install.sh
# @brief In theory, install all the stuff in this directory.  It's never that easy though :(.
# @author Oscar Bezi (oscar@bezi.io)

wget https://thoughtbot.github.io/rcm/debs/rcm_1.3.0-1_all.deb;
sudo dpkg -i rcm_1.3.0-1_all.deb;
rm rcm_1.3.0-1_all.deb;
git clone git@github.com:bezi/dotfiles.git ~/.dotfiles;
cd .dotfiles;
export RCRC=`pwd`/rcrc; # make rcm use the rcrc you just downloaded for now.
git submodule update --init --recursive; # get submodules
lsrc;
