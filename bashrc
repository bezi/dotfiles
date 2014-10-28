#!/bin/bash
# @file ~/.bashrc
# @author Oscar Bezi (oscar@bezi.io)
# @since 5 June 2014
#===============================================================================

# add local directory to the PATH
export PATH="$PATH:.";
export PATH="$HOME/bin:$PATH";

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

if [ -f /afs/club.cc.cmu.edu/contrib/etc/bashrc ]; then
    source /afs/club.cc.cmu.edu/contrib/etc/bashrc;
fi
