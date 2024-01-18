echo -e "\nRemoving sym links\n"

echo "rm ../.bashrc"
rm ~/.bashrc
echo "cp /etc/skel/.bashrc ~/"
cp /etc/skel/.bashrc ~/
echo "rm ../.zshrc"
rm ~/.zshrc
echo "cp /etc/skel/.zshrc ~/"
cp /etc/skel/.zshrc ~/
echo "rm ../.tmux.conf"
rm ~/.tmux.conf
echo "rm ../.vimrc"
rm ~/.vimrc
echo "rm ../.screenrc"
rm ~/.screenrc
echo "rm ../.gitconfig"
rm ~/.gitconfig

echo -e "\n\tdone!\n"
