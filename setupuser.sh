echo -e "\nSetting up sym links\n"

cd ~
echo -e "In directory ~/\n"

# bash and zsh
echo "rm .bashrc"
rm .bashrc
echo "ln -s -T dotfiles/.bashrc .bashrc"
ln -s -T dotfiles/.bashrc .bashrc
echo "rm .zshrc"
rm .zshrc
echo "ln -s -T dotfiles/.zshrc .zshrc"
ln -s -T dotfiles/.zshrc .zshrc
echo "ln -s -T dotfiles/.aliases.sh .aliases.sh"
ln -s -T dotfiles/.aliases.sh .aliases.sh

# tmux
echo "ln -s -T dotfiles/.tmux.conf .tmux.conf"
ln -s -T dotfiles/.tmux.conf .tmux.conf
echo "ln -s -T dotfiles/.vimrc .vimrc"
ln -s -T dotfiles/.vimrc .vimrc
echo "ln -s -T dotfiles/.condarc .condarc"
ln -s -T dotfiles/.condarc .condarc
echo "ln -s -T dotfiles/.screenrc .screenrc"
ln -s -T dotfiles/.screenrc .screenrc
echo "ln -s -T dotfiles/.gitconfig .gitconfig"
ln -s -T dotfiles/.gitconfig .gitconfig
echo "ln -s -T dotfiles/setupenv.sh setupenv.sh"
ln -s -T dotfiles/setupenv.sh setupenv.sh
echo "ln -s -T dotfiles/setupuser.sh setupuser.sh"
ln -s -T dotfiles/setupuser.sh setupuser.sh
echo "ln -s -T dotfiles/vanillify.sh vanillify.sh"
ln -s -T dotfiles/vanillify.sh vanillify.sh

echo -e "\n\tdone!"
