#!/bin/bash
# @file ~/.bashrc
# @author Oscar Bezi (oscar@bezi.io)
# @since 5 June 2014
#===============================================================================

# add local directory to the PATH
export PATH="$PATH:.";

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth;

# append to the history file, don't overwrite it
shopt -s histappend;
HISTSIZE=1000;
HISTFILESIZE=2000;

# check the window size after each command
shopt -s checkwinsize;

# make less use colors
export LESS=-RFX;

# set default editor
export EDITOR="vim";

# load aliases, and make sure we can use them
if [ -f ~/.bash_aliases ]; then
    shopt -s expand_aliases;
    . ~/.bash_aliases;
fi

# load location shortcuts
if [ -f ~/.bash_locations ]; then
    . ~/.bash_locations;
fi

# load custom prompt
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt;
fi

# mechanism to open new terminal in the same place as another terminal without
# spawning a child terminal.  (I'm sure this is a solved problem but this is my
# quick hack)  sl _s_aves _l_ocation, and the next terminal opened will be in
# that directory
alias sl='pwd > ~/.last_loc'
if [ -f ~/.last_loc ]; then
    cd `cat ~/.last_loc`;
    rm ~/.last_loc;
fi

MODSNAKE_REPO="svn+ssh://odb@modsnake/home/samba/modsnake/SVNROOT"
# Modsnake firmware toolchain
export FIRMWARE_EXT_PATH="/home/bezi/dev/firmware/ext";
export PATH="/home/bezi/dev/firmware/toolchain/bin:/home/bezi/dev/firmware/stlink:$PATH";

# added color-gcc to a bin directory
export PATH="$HOME/bin:$PATH";
