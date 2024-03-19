#!/usr/bin/bash

echo -e "\nSetting up NeoVim for Linux with minimal configuration."
echo -e "\t+--> Please run using bash\n"

#if [[ "${SHELL}" == *"zsh"* ]]; then
#    echo -e "--> Please run using bash; exiting.\n"
#    exit 1
#else
#    echo "bash"
#fi

# Check for .config directory
if [ -d ~/.config ]; then
	echo "--> .config directory exists"
else
	echo "--> .config directory does not exist"
	echo "--> Creating config directory"
	mkdir ~/.config
fi

# Check for nvim_minimal directory
if [ -d ~/dotfiles/nvim_minimal ]; then
	echo "--> Copying nvim config to ~/.config"
else
	echo "--> nvim_minimal does not exists!"
	exit 1
fi

cp -rsT ~/dotfiles/nvim_minimal ~/.config/nvim	
echo "--> Cloning packer into .local directory ..."

if [ -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
    echo -e "--> Packer already exists! \n"
else
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

echo -e "--> Done ...\n"

