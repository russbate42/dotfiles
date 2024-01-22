#!/usr/bin/bash

echo -e "\nSetting up NeoVim for Ubuntu with russbate configuration."
echo -e "\t+--> Please run using bash\n"

#if [[ "${SHELL}" == *"zsh"* ]]; then
#    echo -e "--> Please run using bash; exiting.\n"
#    exit 1
#else
#    echo "bash"
#fi

if [ -d ~/.config ]; then
	echo "--> Copying nvim config to ~/.config"
	# cp -r ./nvim ~/.config	
else
	echo "--> .config directory does not exist"
	echo "--> Creating config directory"
	# mkdir ~/.config
fi

echo "--> Cloning packer into .local directory ..."

if [ -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
    echo -e "--> Packer already exists! \n"
else
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
        ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

echo -e "--> Done ...\n"

