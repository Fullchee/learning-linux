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
sudo add-apt-repository -y ppa:alessandro-strada/ppa
sudo add-apt-repository -y ppa:shutter/ppa
sudo add-apt-repository ppa:peek-developers/stable



# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list


sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# installing the programs
sudo apt-get -y install gcc \
google-chrome-stable \
google-drive-ocamlfuse \
gnome-shell-pomodoro \
grub-customizer \
guake \
numix-gtk-theme \
numix-icon-theme \
peek \
playonlinux \
realpath \
redshift \
redshift-gtk \
ruby-all-dev \
silversearcher-ag \
shutter libgoo-canvas-perl \
sublime-text \
synapse \
terminator \
touchpad-indicator \
tree \
vlc \
wine \
workrave \
xclip \
xterm \
yank \
zip


# install powerline-fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# if you have a synaptics touchpad, you need this command for touchpad-indicator
killall syndaemon

# install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# install my dotfiles after installing prezto
git clone --bare https://github.com/Fullchee/cfg.git $HOME/.cfg
config config --local status.showUntrackedFiles no

# Disable global Linux Mint help when pressing F1
sudo chmod -x /usr/local/bin/yelp


# install nvm and node
nvm install --lts

# note: for fkill, you may have to run sudo fkill
npm install -g trash-cli tldr jsinspect eslint fkill-cli trymodule

# change shell last
chsh -s /bin/zsh

# disable the insert button
xmodmap -e "keycode 118 ="
