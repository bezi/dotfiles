dotfiles
========

My dotfiles synced with rcm.

installation
------------
- Install RCM
```
wget https://thoughtbot.github.io/rcm/debs/rcm_1.3.0-1_all.deb;
sudo dpkg -i rcm_1.3.0-1_all.deb;
rm rcm_1.3.0-1_all.deb;
```

Or install with non-dpkg systems [here](https://github.com/thoughtbot/rcm).
To install locally, change the call to `./configure` to `./configure prefix=$HOME/` to install to `$HOME/bin`, then run
```
export PATH=$PATH:$HOME/bin
```
to get temporary access to rcm utilities (this should be in the .bashrc in the repo).

- Clone repo
```
git clone git@github.com:bezi/dotfiles.git ~/.dotfiles;
cd .dotfiles;
export RCRC=`pwd`/rcrc; # make rcm use the rcrc you just downloaded for now.
git submodule update --init --recursive; # get submodules
```

- Check that all is well and propagate .dotfiles
```
lsrc;
rcup;
```
