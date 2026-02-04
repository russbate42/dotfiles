#!/bin/bash

EOS_DIR=/eos/user/r/$USER

alias fh='find $(pwd) -maxdepth 1'
alias goeos="cd ${EOS_DIR} && ls -lah"
alias higpeos="cd /eos/atlas/atlascerngroupdisk/phys-higp/higgs-pairs/Run3/bbbb"
alias cleanshell="source ~/dotfiles/clean_shell_lxplus.sh"
# alias nv="~/sandbox/nvim.appimage"
alias nv="~/sandbox/nvim-linux-x86_64.appimage"
alias lsa='ls -la'
alias lsh='ls -lh'
alias lssh='ls -lah | grep sh'
alias lh='ls -lh'
alias ll='ls -l'
alias lspy='ls -l *.py'
alias cm="du -sh -- * | sort -h"
alias cma="du -h -- * | sort -h"
alias lcgenvatlas='echo "setting up lcg_104c_atlas_6 el-9 gcc" && \
    lsetup "lcgenv -p lcg_104c_atlas_6 x86_64-el9-gcc13-opt gcc"'
alias cleannvim='rm -f ~/.local/state/nvim/swap/*'
alias lsd='ls -ld */'
alias lsah='ls -lah'
alias lsda='ls -lda */'
alias lsf='find . -maxdepth 1 -type f'
alias gst='git status'
alias py='python'
alias voms='voms-proxy-init -voms atlas'
alias gitgraph='git log --graph --pretty=oneline --abbrev-commit'
alias tmux='tmux -u'
alias lxtm="systemctl --user start tmux.service && tmux a"
alias lsag="ls -lah | grep"
alias lg="ls | grep"
alias fg="find $(pwd) -maxdepth 1 | grep"

function hidden() {
    ls -a "$@" | grep '^\.';
}

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

function make_file_list(){
    input_dir=./
    output_file=./output_files.txt
    while [[ $# -gt 0 ]]; do
        case $1 in
            -h|--help) printf "Make file lists.\n"; exit 0;;
            -i|--input-dir) input_dir=$2; shift 2;;
            -o|--output-dir) output_file=$2; shift 2;;
            -*|--*) printf "Unknown option\n"; exit 1;;
        esac
    done
    find $input_dir -maxdepth 1 | tail -n +2 > $output_file
}

function printalias(){
printf '
fh
goeos
cleanshell
nv
lsa
lsh
lh
ll
lspy
cm
cma
lcgenvatlas
cleannvim
lsd
lsah
lsda
lsf
gst
py
voms
gitgraph
tmux
lxtm'
printf "\n"
}
