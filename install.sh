echo -e "\033[92mInstall OroJoven\033[0m"
sleep 2
apt install fish -y
apt install git -y
apt install python python2 -y
apt install proot -y
apt install figlet -y
apt install ruby 
gem install lolcat

sleep 2

rm $PREFIX/etc/fish/config.fish
rm $PREFIX/etc/bash.bashrc
rm $PREFIX/etc/motd
cd files
mv config.fish $PREFIX/etc/fish
mv bash.bashrc $PREFIX/etc/
exit

