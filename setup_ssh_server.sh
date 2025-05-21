#!/bin/zsh

printf "\nSetting up host as ssh server\n"
printf "\t-->If on a Virutal Machine (VM), please enable"
printf " \"Bridged Adapter\" in Settings and restart\n"
sleep .5

if dpkg -s openssh-server &> /dev/null; then
    printf "\t-->openssh-server already installed, skipping\n"
    sleep .25
else
    printf "\nUpdating apt and installing openssh-server..\n"
    sleep .25
    sudo apt update
    sudo apt install openssh-server
fi

printf "\nEnabling ssh server ..\n"
sleep .25
sudo systemctl enable ssh
sudo systemctl start ssh

printf "Checking system status\n"
sudo systemctl status ssh

printf "Getting system IP address .."
inet_line=$(ip a | grep -w inet | sed -n 2p)
ip_address=$(echo "${inet_line}" | grep -o 'inet [0-9.]\+' | cut -d' ' -f2)
sleep .25

printf " Done\n"
printf "Test with ssh <username>@${ip_address}\n"


