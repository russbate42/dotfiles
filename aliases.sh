# kitty terminal
alias kitty='kitten'
alias icat='kitty kitten icat'

# Computing
alias triumf='ssh russbate@triumf-ml1.phas.ubc.ca'
alias cedar='echo "Not set up yet."'
alias triumf_t3='echo "Not set up yet."'

# Python
alias python='python3'
alias py='python'

# Neovim related
# alias nv=~/sandbox/nvim.appimage
alias nv=~/sandbox/nvim-linux-x86_64.appimage
alias cleannvim='rm -f ~/.local/state/nvim/swap/*'

# Other workflow related
alias tmuxu='tmux new-session -s R-Ubuntu'

# Listing stuff
alias lsl='ls -1'
alias lsd='ls -ld */'
alias lsah='ls -lah'
alias lsda='ls -lda */'
# - Specific languages
alias lssh='ls -la | grep sh'
alias lspy='ls -l *.py'

# Finding stuff
alias findgrep='find $(pwd)/ | grep'
alias fh='find $(pwd)/'
alias lsf='find . -maxdepth 1 -type f'
alias lsg='ls | grep'
alias lslg='ls -l | grep'
alias lg='ls -l | grep'

# Git
alias gst='git status'
alias gd='git diff'
alias gitgraph='git log --graph --pretty=oneline --abbrev-commit'

# Memory controls
alias cm="du -sh -- * | sort -h"
alias cma="du -h -- * | sort -h"

# Saved work sessions
alias physics='source ~/dotfiles/physics_tmux.sh'

# Helpful tools
# Requires Ghostscript
alias pdfcompress='gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile='

# Helper functions
function checkmem() {
	if [ -z "$1" ]
    then
		du -h | sort -h
	else
		du -h ./$1 | sort -h
    fi
}

function lx(){
    ssh "rbate@lxplus${1}.cern.ch"
}

function mount_filesystem() {
    printf "\n"
    printf "For now, just prints out an example\n"
    # if a mount directory does not exist
    printf "mkdir /mnt/new_mount_directory_name\n"
    # general mount command
    # printf "sudo sshfs -o allow_other,default_permissions rbate@lxplus.cern.ch:/eos/user/r/rbate /mnt/lxplus_mnt\n"
    printf "sudo sshfs -o allow_other,idmap=user,uid=$(id -u),gid=$(id -g),reconnect rbate@lxplus.cern.ch:/eos/user/r/rbate /mnt/lxplus_mnt\n"
    printf "\n"
    printf "unmount with:\n"
    printf "sudo umount /mnt/lxplus_mnt\n"
    printf "\n"
}
