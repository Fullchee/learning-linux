#!/bin/zsh

# change shell
chsh -s /bin/zsh

# adding repos
add-apt-repository ppa:atareao/atareao
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:gnome-terminator/ppa
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo add-apt-repository -y ppa:webupd8team/unstable
sudo add-apt-repository -y ppa:videolan/stable-daily
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:noobslab/apps

# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list


sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# installing the programs
sudo apt-get install gcc \
google-chrome-stable \
gnome-shell-pomodoro \
grub-customizer \
guake \
imagemagick \
numix-gtk-theme \
numix-icon-theme \
playonlinux \
realpath \
redshift \
redshift-gtk \
silversearcher-ag \
sublime-text \
synapse \
terminator \
touchpad-indicator \
tree \
ttyrec \
vlc \
wine \
workrave \
x11-apps \
xclip \
xterm \
yank \


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

# install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh


# install my dotfiles after installing prezto
git clone --bare https://github.com/Fullchee/cfg.git $HOME/.cfg
config config --local status.showUntrackedFiles no

# install fasd from dotfiles
PREFIX=$HOME make -C ~/fasd

# Disable global Linux Mint help when pressing F1
sudo chmod -x /usr/local/bin/yelp

npm install -g trash-cli
