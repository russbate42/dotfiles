echo -e "\nSetting up sym links\n"

cd ~

echo "ln -s -T dotfiles/.bashrc .bashrc"
ln -s -T dotfiles/.bashrc .bashrc
echo "ln -s -T dotfiles/.tmux.conf .tmux.conf"
ln -s -T dotfiles/.tmux.conf .tmux.conf
echo "ln -s -T dotfiles/.vimrc .vimrc"
ln -s -T dotfiles/.vimrc .vimrc
echo "ln -s -T dotfiles/.screenrc .screenrc"
ln -s -T dotfiles/.screenrc .screenrc
echo "ln -s -T dotfiles/.gitconfig .gitconfig"
ln -s -T dotfiles/.gitconfig .gitconfig
echo "ln -s -T dotfiles/setupenv.sh setupenv.sh"
ln -s -T dotfiles/setupenv.sh setupenv.sh

echo -e "\n\tdone!"
