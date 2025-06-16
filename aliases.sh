alias kitty='kitten'
alias icat='kitty kitten icat'

alias nv=~/sandbox/nvim.appimage
alias triumf='ssh russbate@triumf-ml1.phas.ubc.ca'
alias cedar='echo "Not set up yet."'
alias triumf_t3='echo "Not set up yet."'
alias python='python3'
alias cleannvim='rm -f ~/.local/state/nvim/swap/*'
alias tmuxu='tmux new-session -s R-Ubuntu'
alias lsd='ls -ld */'
alias lsah='ls -lah'
alias lsda='ls -lda */'
alias lssh='ls -la | grep sh'
alias lsf='find . -maxdepth 1 -type f'
alias gst='git status'
alias lspy='ls -l *.py'
alias py='python'
alias cm="du -sh -- * | sort -h"
alias cma="du -h -- * | sort -h"
alias fh='find $(pwd)/'
alias findgrep='find $(pwd)/ | grep'
alias gitgraph='git log --graph --pretty=oneline --abbrev-commit'
alias physics='source ~/dotfiles/physics_tmux.sh'

function checkmem() {
	if [ -z "$1" ]
    then
		du -h | sort -h
	else
		du -h ./$1 | sort -h
    fi
}

function thing(){
    printf "in thing function\n"
    local node=$1
    ssh "rbate@lxplus${node}.cern.ch"
    # exit_status=!?
    # if [[ "$exit_status" == "" ]]; then
    #
}
function lx(){
    ssh "rbate@lxplus${1}.cern.ch"
}

