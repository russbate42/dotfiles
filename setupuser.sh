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

printf "\n\nsetting up Alacritty"
cp -rsT ~/dotfiles/alacritty ~/.config/alacritty

printf "\n\nsetting up neovim.."
#echo "searching for neovim in ~/sandbox/"
#if [[ -f ~/sandbox/nvim.appimage ]] then
#    else if:
#
#    else if:
#
#fi

cp -rsT ~/dotfiles/nvim ~/.config/nvim

printf "\n\tdone!\n\n"
