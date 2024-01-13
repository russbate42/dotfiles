# .bashrc

##############################
## NONINTERACTIVE COMPONENT ##
##############################

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc

fi

# check if shell is in noninteractive
if [ -z "$PS1" ]; then
    # prompt var is not set, so this is *not* an interactive shell
    return
fi

###########################
## INTERACTIVE COMPONENT ##
###########################

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# echo "RUCIO_ACCOUNT=rbate"
# export RUCIO_ACCOUNT=rbate
# echo "ALRB_TutorialData=/cvmfs/atlas.cern.ch/repo/tutorials/asg/cern-mar2022"
# export ALRB_TutorialData=/cvmfs/atlas.cern.ch/repo/tutorials/asg/cern-mar2022
# echo "KRB5_CONFIG=$ATLAS_LOCAL_ROOT_BASE/user/krb5.conf"
# export KRB5_CONFIG=$ATLAS_LOCAL_ROOT_BASE/user/krb5.conf
# echo "ALRB_rootVersion=6.26.04-x86_64-centos7-gcc11-opt"
# export ALRB_rootVersion=6.26.04-x86_64-centos7-gcc11-opt

# Python Configuration
# scl enable rh-python38 bash --norc
PYTHON_VERSION=$(python -V 2>&1) #Need to redirect, python -V goes to stderr(?)

# basically if there is a two that shows up in the python version
if [[ "$PYTHON_VERSION" == "Python 2."* ]]; then
	echo ""
	echo "Python version auto configured to"
	python -V
	echo ""
	echo "to configure python version manually type scl enable rh-python* bash"
	echo "current reccomendation at 2022-09-07 is rh-python38"
	echo ""

else
	echo ""
	echo "Python version configured to"
	python -V
	echo ""
fi

echo "Hostname: $HOSTNAME"
echo "For remote port forwarding in a new terminal type"
echo "ssh -R 52698:127.0.0.1:52698 rbate@${HOSTNAME} -N -f"
echo ""

# SET EOS DIRECTORY
EOS_DIR=/eos/user/r/rbate

## TMUX
alias tmux='tmux -u'

# configure tmux socket
export TMUX_TMPDIR=/tmp/$USER/
# Note socket path is TMUX
echo "TMUX sessions configured to folder: ${TMUX_TMPDIR}"
echo "TMUX socket: ${TMUX}"
echo ""

# for screen color with tmux
export TERM=xterm-256color
echo "TERM=${TERM}"
echo ""

# Add local builds to the path
export PATH=$HOME/local/bin:$PATH
# for some reason some builds are in bin bin
export PATH=$HOME/local/bin/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

export LD_LIBRARY_PATH=$HOME/.local/lib:$LD_LIBRARY_PATH
export MANPATH=$HOME/.local/share/man:$MANPATH

ktmux(){
    if [[ -z "$1" ]]; then
		k5reauth -f -i 3600 -p $USER -k ~/private/$USER.keytab -- tmux new-session
        #k5reauth -f -i 3600 -p rbate -k /afs/cern.ch/user/r/rbate/.k5auth/rbate.keytab -- tmux new-session
    else
		k5reauth -f -i 3600 -p $USER -k ~/private/$USER.keytab -- tmux new-session -s $1
        #k5reauth -f -i 3600 -p rbate -k /afs/cern.ch/user/r/rbate/.k5auth/rbate.keytab -- tmux new-session -s $1
    fi
}

ktmux_zsh(){
    if [[ -z "$1" ]]; then
		SHELL=/usr/bin/zsh k5reauth -f -i 3600 -p $USER -k ~/private/$USER.keytab -- tmux new-session
        #SHELL=/usr/bin/zsh k5reauth -f -i 3600 -p rbate -k /afs/cern.ch/user/r/rbate/.k5auth/rbate.keytab -- tmux new-session
    else
		SHELL=/usr/bin/zsh k5reauth -f -i 3600 -p $USER -k ~/private/$USER.keytab -- tmux new-session -s $1
        #SHELL=/usr/bin/zsh k5reauth -f -i 3600 -p rbate -k /afs/cern.ch/user/r/rbate/.k5auth/rbate.keytab -- tmux new-session -s $1
    fi
}

tmux_zsh(){
    if [[ -z "$1" ]]; then
        SHELL=/usr/bin/zsh tmux new-session
    else
        SHELL=/usr/bin/zsh tmux new-session -s $1
    fi
}

persist(){
    if [[ -z "$1" ]]; then
        echo "No argument passed to persist."
    else
		k5reauth -f -i 3600 -p $USER -k ~/private/$USER.keytab -- "$@"
        #k5reauth -f -i 3600 -p rbate -k /afs/cern.ch/user/r/rbate/.k5auth/rbate.keytab -- "$@"
    fi
}

alias goeos="cd ${EOS_DIR} && ls -lah"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
#        . "/usr/etc/profile.d/conda.sh"
#    else
#        export PATH="/usr/bin:$PATH"
#    fi
#fi
#unset __conda_setup
## <<< conda initialize <<<

