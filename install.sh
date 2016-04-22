#!/bin/bash
# @file install.sh
# @brief Bootstraps my dotfiles.
# @author Oscar Bezi (oscar@bezi.io)
#===============================================================================

# Terminate on error.
set -e;

# Work in the home directory.
cd ~/;

# Set it to your github user account.
GH_USER=bezi;
DOTFILES_DIR='.dotfiles-test';

BOLD=$(tput bold)
ERR=$(tput setaf 1)$(tput bold)
RESET=$(tput sgr0)

#===============================================================================
# Check for the existence of RCM, install it if not present.
#===============================================================================
function check_rcm {
    if $(command -v rcup >/dev/null); then
        echo ${BOLD}'RCM detected.'${RESET}
    else
        echo ${BOLD}'RCM not detected.'${RESET}
        echo -n 'Installing RCM...                =>';

        DOWNLOAD="rcm_1.2.3-1_all.deb";
        wget https://thoughtbot.github.io/rcm/debs/${DOWNLOAD};
        sudo dpkg -i ${DOWNLOAD};
        rm ${DOWNLOAD};

        echo ${BOLD}' Installed.'${RESET}
    fi
}

#===============================================================================
# Generate new SSH keys.
#===============================================================================
function gen_ssh_keys {
    echo -n 'Generating new SSH keys...       =>';
    mkdir -p ~/.ssh
    yes | ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa -q > /dev/null
    echo ${BOLD}' Done.'${RESET}
}

#===============================================================================
# Find a -release file, look for the first line that starts with 'NAME='.
# Extract the value from the quotes.  This in no way 100% bullet-proof, but
# it'll generate a nice sample name.
#===============================================================================
function computer_name {
    NAME=$(cat /etc/*-release | grep ^NAME= | head -1 | cut -d '"' -f2);
    TITLE=${HOSTNAME}:${NAME};
    echo ${TITLE}
}

#===============================================================================
# Upload SSH keys to GitHub.
#===============================================================================
function upload_to_github {
    # Part 1: Load in key name and password from STDIN.
    TITLE=$(computer_name);
    KEY=$(cat ~/.ssh/id_rsa.pub)
    DATA=$(echo "{\"title\":\"${TITLE}\",\"key\":\"${KEY}\"}");

    echo -e "Generating GitHub key identifier => ${BOLD}${TITLE}${RESET}\n"
    echo -en '\t Select another one, or hit enter to accept: '
    read new_title

    # If no input is entered...
    if [[ -z "${new_title// }"  ]]; then
        echo -e "\t Using generated key."
    else
        TITLE=${new_title}
        echo -e "\t Using key identifier    => $(tput bold)${TITLE}$(tput sgr0)"
    fi

    # Load password.
    echo -n "GitHub password for username ${GH_USER}: "
    read -s GH_PASS
    echo

    echo -n 'Uploading SSH key to GitHub...   =>';

    STATUS=$(curl -s -w %{http_code} \
        -u "${GH_USER}:${GH_PASS}" --data "${DATA}" \
        https://api.github.com/user/keys)

    # Parse out the HTTP status code.  Success codes are 2XX.
    CODE=$(echo ${STATUS} | awk '{ print $NF }');
    if [ ! "${CODE:0:1}" == "2" ]; then
        echo ${ERR}' FAILED.'${RESET}
        echo ${ERR}"Error in uploading to GitHub: ${STATUS}"${RESET}
        exit
    else
        echo ${BOLD}' Done.'${RESET}
    fi
}

#===============================================================================
# Clones dotfiles and deploys with RCM.
#===============================================================================
function deploy_dotfiles {
    git clone git@github.com:bezi/dotfiles.git ${DOTFILES_DIR}
    cd ${DOTFILES_DIR};
    export RCRC=`pwd`/rcrc; # make rcm use the rcrc you just downloaded for now.
    git submodule update --init --recursive; # get submodules
    rcup;
}

# Don't want to install files if they're already installed!
if [ -e "${DOTFILES_DIR}" ]; then
    echo ${BOLD}'Dotfiles already installed.'${RESET};
    exit;
fi

check_rcm;
gen_ssh_keys;
upload_to_github;
deploy_dotfiles;
