# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#######################
## RUSSELL COMPONENT ##
#######################


# .zshrc

##############################
## NONINTERACTIVE COMPONENT ##
##############################

# Source global definitions
#if [ -f /etc/zshrc ]; then
#	. /etc/zshrc
#
#fi
#
## check if shell is in noninteractive
#if [ -z "$PS1" ]; then
#    # prompt var is not set, so this is *not* an interactive shell
#    return
#fi

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

echo "rm -f .zcompdump-lxplus*"
rm -f .zcompdump-lxplus*

# SET EOS DIRECTORY
EOS_DIR=/eos/user/r/rbate

## ALIASES
alias fh='find $(pwd)/'
alias goeos="cd ${EOS_DIR} && ls -lah"
alias cleanshell="source ~/dotfiles/clean_shell_lxplus.sh"
alias nv="~/sandbox/nvim.appimage"
alias lsah='ls -lah'
alias lsa='ls -la'
alias lsh='ls -lh'
alias lh='ls -lh'
alias cm="du -sh -- * | sort -h"
alias cma="du -h -- * | sort -h"
alias gs="git status"
alias lcgenvATLAS='echo "setting up LCG_104c_ATLAS_6 el-9 gcc" && \
    lsetup "lcgenv -p LCG_104c_ATLAS_6 x86_64-el9-gcc13-opt gcc"'
alias cleannvim='rm -f ~/.local/state/nvim/swap/*'

function lcgv() {
    setupATLAS
    lsetup "views LCG_104c_ATLAS_6 x86_64-el9-gcc13-opt"
    printf "\n\tRunning: LCG_104c_ATLAS_6\n"
    printf "\tUsing: $(python --version)\n"
    printf "\n"
}

function checkmem() {
	if [ -z "$1" ]
    then
		du -h | sort -h
	else
		du -h ./$1 | sort -h
    fi
}

function printalias(){
printf 'fh
goeos
cleanshell
nv
lsah
lsa
lsh
cm
cma
gs
lcgenvATLAS
cleannvim'
printf "\n"
}

# for screen color with tmux
export TERM=xterm-256color
echo "TERM=${TERM}"
echo ""

# Add local builds to the path
export PATH=$HOME/local/bin:$PATH
# for some reason some builds are in bin bin
export PATH=$HOME/local/bin/bin:$PATH
# For Rust
export PATH=$HOME/.cargo/bin:$PATH

## FUNCTIONS
ktmux(){
    if [[ -z "$1" ]]; then
        k5reauth -f -i 3600 -p rbate -k /afs/cern.ch/user/r/rbate/.k5auth/rbate.keytab -- tmux new-session
    else
        k5reauth -f -i 3600 -p rbate -k /afs/cern.ch/user/r/rbate/.k5auth/rbate.keytab -- tmux new-session -s $1
    fi
}

persist(){
    if [[ -z "$1" ]]; then
        echo "No argument passed to persist."
    else
        k5reauth -f -i 3600 -p rbate -k /afs/cern.ch/user/r/rbate/.k5auth/rbate.keytab -- "$@"
    fi
}

# Miniconda adapted
if [ -d "${HOME}/miniconda3/bin" ]; then
    printf "Found miniconda executable\n"
else
    printf "Using default conda"
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/afs/cern.ch/user/r/rbate/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/afs/cern.ch/user/r/rbate/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/afs/cern.ch/user/r/rbate/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/afs/cern.ch/user/r/rbate/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


