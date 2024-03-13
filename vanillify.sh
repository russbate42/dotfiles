echo -e "\nRemoving sym links\n"

echo "rm ../.bashrc"
rm ~/.bashrc
echo "rm ../.zshrc"
rm ~/.zshrc
echo "rm ../.tmux.conf"
rm ~/.tmux.conf
echo "rm ../.vimrc"
rm ~/.vimrc
echo "rm ../.screenrc"
rm ~/.screenrc
echo "rm ../.gitconfig"
rm ~/.gitconfig
echo "rm ~/setupenv.sh"
rm ~/setupenv.sh

echo -e "\nRemoving .zcompdump-* files"

echo "rm .zcompdump-*"
rm ~/.zcompdump-*

echo -e "\nCopying base config files\n"
echo "cp /etc/skel/.bashrc ~/"
cp /etc/skel/.bashrc ~/
echo "cp /etc/skel/.zshrc ~/"
cp /etc/skel/.zshrc ~/
# echo "cp ~/dotfiles/setupuser.sh ~/"
# cp ~/dotfiles/setupuser.sh ~/

echo -e "\n\tdone!\n"
