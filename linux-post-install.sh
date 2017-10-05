#!/bin/zsh

# change shell
chsh -s /bin/zsh

# adding repos
add-apt-repository ppa:atareao/atareao
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo add-apt-repository ppa:gnome-terminator/ppa
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo add-apt-repository ppa:webupd8team/unstable
sudo add-apt-repository ppa:videolan/stable-daily
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:noobslab/apps

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

# installing the repos
sudo apt-get install calendar-indicator albert synapse terminator grub-customizer \
guake vlc sublime-text imagemagick ttyrec gcc x11-apps \
touchpad-indicator tree \
numix-gtk-theme numix-icon-theme \
redshift redshift-gtk xclip workrave realpath yank xterm wine playonlinux \
silversearcher-ag


# install powerline-fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# install ttygif
git clone https://github.com/icholy/ttygif.git
cd ttygif
make
sudo make install
cd ..
rm -rf ttygif

# if you have a synaptics touchpad, you need this command for touchpad-indicator
killall syndaemon
