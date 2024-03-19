sudo apt-get purge texlive*
sudo rm -rf /usr/local/texlive/* && rm -rf ~/.texlive*
sudo rm -rf /usr/local/share/texmf
sudo rm -rf /etc/texmf
sudo apt-get remove tex-common --purge
rm -rf ~/.texlive
find -L /usr/local/bin/ -lname /usr/local/texlive/*/bin/* | xargs -r rm
#find -L /usr/local/bin/ -lname /usr/local/texlive/*/bin/* | sudo xargs -r rm

# taken from https://tex.stackexchange.com/questions/95483/how-to-remove-everything-related-to-tex-live-for-fresh-install-on-ubuntu
# and https://tex.stackexchange.com/questions/256990/remove-symbolic-links-in-usr-local-bin-from-previous-install/257042#257042
