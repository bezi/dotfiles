#!/bin/bash/
# useful bash aliases
# @file ~/.bash_aliases
# @author Oscar Bezi (oscar@bezi.io)
# @since  5 June 2014
#===============================================================================

# navigation shortcuts
alias ..='cd ../';
alias ...='cd ../../';
alias ....='cd ../../../';

# git shortcuts
alias gpull='git pull';
alias gpush='git push';
alias gc='git commit -am';
alias gs='git status';
alias glog='git log --pretty=oneline --graph --decorate --abbrev-commit --all';

# other shortcuts
alias m='make';
alias mc='make clean';
alias ls='ls --color --group-directories-first';
alias ll='ls -lhA';
alias l='ls';
alias gimme='sudo apt-get install -q -y';
alias eb='vim ~/.bashrc';
alias sb='source ~/.bashrc';
alias reload='source ~/.bashrc';
alias vim_reload='vim +PluginClean +PluginInstall +qall';
alias dotfiles_reload='cd ~/.dotfiles; gpull; rcup; reload; vim_reload; cd --;';
alias tmux='tmux -2';
alias smlnj='rlwrap sml'
alias hg='history | grep'; # like I'm gonna use mercurial lol

# :)
alias nyan="telnet nyancat.dakko.us"

# SML
export PATH=$PATH:/usr/lib/smlnj/bin/
export SMLNJ_HOME=/usr/lib/smlnj

# Open up a new OS session.
alias os="ssh -Y -t andrew \"p3; clear; ls; bash\"";
# os is one too many characters.
alias o="os";


# 410 stuff
PATH="/afs/cs.cmu.edu/academic/class/15410-f15/bin:${PATH}"; export PATH

# _os m_ake
alias osm='make && simics46 kernel';

# I'm a lazy fuck
alias o='osm'

# adds a location to the ~/.bash_locations
function add_loc {
    local NAME="$1";
    local LOCATION=`pwd`;
    local DATE=`date +"%d %b %Y"`;
    echo "# added $DATE" >> ~/.bash_locations;
    echo "alias $NAME='cd $LOCATION';" >> ~/.bash_locations;
    echo "Alias $NAME added to $LOCATION";
}

# print human-readable location
function locs {
    cat ~/.bash_locations  | sed -e "/^#/d" -e "s/='cd /::/" -e "s/';//" | awk '{print $2}'
}

# colour shortcuts, courtesy of ArchWiki
# Reset
Color_Off='\[\e[0m\]'       # Text Reset

# Regular Colors
Black='\[\e[0;90m\]'       # Black
Red='\[\e[0;91m\]'         # Red
Green='\[\e[0;92m\]'       # Green
Yellow='\[\e[0;93m\]'      # Yellow
Blue='\[\e[0;94m\]'        # Blue
Purple='\[\e[0;95m\]'      # Purple
Cyan='\[\e[0;96m\]'        # Cyan
White='\[\e[0;97m\]'       # White

# Bold
BBlack='\[\e[1;90m\]'      # Black
BRed='\[\e[1;91m\]'        # Red
BGreen='\[\e[1;92m\]'      # Green
BYellow='\[\e[1;93m\]'     # Yellow
BBlue='\[\e[1;94m\]'       # Blue
BPurple='\[\e[1;95m\]'     # Purple
BCyan='\[\e[1;96m\]'       # Cyan
BWhite='\[\e[1;97m\]'      # White

# Underline
UBlack='\[\e[4;30m\]'       # Black
URed='\[\e[4;31m\]'         # Red
UGreen='\[\e[4;32m\]'       # Green
UYellow='\[\e[4;33m\]'      # Yellow
UBlue='\[\e[4;34m\]'        # Blue
UPurple='\[\e[4;35m\]'      # Purple
UCyan='\[\e[4;36m\]'        # Cyan
UWhite='\[\e[4;37m\]'       # White

# Background
On_Black='\[\e[40m\]'       # Black
On_Red='\[\e[41m\]'         # Red
On_Green='\[\e[42m\]'       # Green
On_Yellow='\[\e[43m\]'      # Yellow
On_Blue='\[\e[44m\]'        # Blue
On_Purple='\[\e[45m\]'      # Purple
On_Cyan='\[\e[46m\]'        # Cyan
On_White='\[\e[47m\]'       # White

# High Intensity backgrounds
On_IBlack='\[\e[0;100m\]'   # Black
On_IRed='\[\e[0;101m\]'     # Red
On_IGreen='\[\e[0;102m\]'   # Green
On_IYellow='\[\e[0;103m\]'  # Yellow
On_IBlue='\[\e[0;104m\]'    # Blue
On_IPurple='\[\e[0;105m\]'  # Purple
On_ICyan='\[\e[0;106m\]'    # Cyan
On_IWhite='\[\e[0;107m\]'   # White
