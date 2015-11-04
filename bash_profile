source .bashrc

# Machine-specific configs.
# Things in the bash_profile typically have to do with initalizing the windows
# manager.
case "$HOSTNAME" in

    # CMU Unix serevers.
    'unix'[0123456789]'.andrew.cmu.edu')
        aklog cs.cmu.edu;
        ;;

    # Surface VM.
    "apollo-ubuntu")
        startx;
        ;;

esac
