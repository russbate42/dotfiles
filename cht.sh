#!/usr/bin/env bash
languages=`echo "golang lua cpp c python rust bash zsh" | tr ' ' '\n'`
core_utils=`echo "xargs find mv sed awk git" | tr ' ' '\n'`

#selected=`printf "$languages\nLANGUAGES\n\n$core_utils\nCORE UTIL" | fzf`
selected=`printf "$languages\nLANGUAGES\n\n$core_utils\nCORE UTILS" | fzf`

if printf "$languages" | grep -qs $selected; then
    read -p "query: " query
    # for a new window type tmux neww -n cheatsheet bash
    tmux neww -n cheatsheet bash -c \
        "curl cht.sh/$selected/`echo $query | tr ' ' '+'` \
            & while [ : ]; do sleep 10; done"
elif printf "$core_utils" | grep -qs $selected; then
    read -p "query: " query
    tmux neww -n cheatsheet bash -c \
    "curl cht.sh/$selected~`$query | tr ' ' '~'`\
        & while [ : ]; do sleep 10; done"
else
    echo "Invalid Selection"
fi


