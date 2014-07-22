dotfiles
========

My dotfiles synced with rcm.

installation
------------
- Install RCM
```
wget https://thoughtbot.github.io/rcm/debs/rcm_1.2.3-1_all.deb;
sudo dpkg -i rcm_1.2.3-1_all.deb;
rm rcm_1.2.3-1_all.deb;
```

- Clone repo
```
git clone git@github.com:bezi/dotfiles.git ~/.dotfiles;
```

- Check that all is well and propagate .dotfiles
```
lsrc;
rcup;
```
