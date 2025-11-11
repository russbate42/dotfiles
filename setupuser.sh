echo -e "\nSetting up sym links\n"

cd ~

echo "rm .bashrc"
rm .bashrc
echo "ln -s -T dotfiles/.bashrc .bashrc"
ln -s -T dotfiles/.bashrc .bashrc
echo "rm .zshrc"
rm .zshrc
echo "ln -s -T dotfiles/.zshrc .zshrc"
ln -s -T dotfiles/.zshrc .zshrc

# Aliases
echo "ln -s -T dotfiles/.zshrc .zshrc"
ln -s -T dotfiles/aliases.sh .aliases.sh

## TMUX
echo "Setting up TMUX"
echo "ln -s -T dotfiles/.tmux.conf .tmux.conf"
ln -s -T dotfiles/.tmux.conf .tmux.conf
echo "mkdir ~/.tmux"
mkdir ~/.tmux
echo "cp -rsT ~/dotfiles/tmux ~/.tmux"
cp -rsT ~/dotfiles/tmux ~/.tmux

echo "ln -s -T dotfiles/.vimrc .vimrc"
ln -s -T dotfiles/.vimrc .vimrc
echo "ln -s -T dotfiles/.screenrc .screenrc"
ln -s -T dotfiles/.screenrc .screenrc
echo "ln -s -T dotfiles/.gitconfig .gitconfig"
ln -s -T dotfiles/.gitconfig .gitconfig

printf "\n\nsetting up Alacritty\n"
cp -rsT ~/dotfiles/alacritty ~/.config/alacritty

printf "\n\nsetting up Kitty\n"
cp -rsT ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf

printf "\n\nsetting up Zathura\n"
cp -rsT ~/dotfiles/zathura ~/.config/zathura

printf "\n\nsetting up neovim..\n"
cp -rsT ~/dotfiles/nvim ~/.config/nvim
# change this to the updated neovim config!

#echo "searching for neovim in ~/sandbox/"
#if [[ -f ~/sandbox/nvim.appimage ]] then
#    else if:
#
#    else if:
#
#fi


# Conda
# check if the conda command exists
if command -v conda &> /dev/null; then # check for conda install
    # This means conda is installed
    echo "rm .condarc"
    rm .condarc
    echo "ln -s -T dotfiles/.condarc .condarc"
    ln -s -T dotfiles/.condarc .condarc
else
    printf "Would you like to install conda?\n"
    read input
    lower="$input:l"

    if [[ $lower == "yes" || $lower == "y" ]]; then
        printf "\ninstalling conda .."
        printf "\nsource install_conda.sh"
        sleep .2
        source install_conda.sh
    else
        printf "\nSkipping conda installation."
    fi
fi

printf "\n\tdone!\n\n"

