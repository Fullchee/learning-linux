#!/bin/sh

sudo apt-get update
sudo apt-get upgrade

# adding repos
sudo add-apt-repository -y ppa:atareao/atareao
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo add-apt-repository -y ppa:videolan/stable-daily
sudo add-apt-repository -y ppa:numix/ppa
sudo add-apt-repository -y ppa:noobslab/apps
sudo add-apt-repository -y ppa:alessandro-strada/ppa
sudo add-apt-repository -y ppa:shutter/ppa
sudo add-apt-repository -y ppa:peek-developers/stable
sudo add-apt-repository ppa:jtaylor/keepass


# sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# heroku
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -

sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# installing the programs
sudo apt-get -y install \
imagemagick 
convert \
gcc \
google-chrome-stable \
google-drive-ocamlfuse \
gnome-tweak-tool gnome-shell-extensions chrome-gnome-shell \
gnome-shell-pomodoro \
grub-customizer \
guake \
heroku \
keepass2 \
mailspring \ # awesome email client
nodejs build-essential \
numix-gtk-theme \
numix-icon-theme \
pandoc \ # convert between file types
peek \ # record gifs
playonlinux \ # have Microsoft Office on Linux
realpath \ # (ie realpath ~/.zshrc) 
redshift \ # fl.ux for Linux, turn your screen red
redshift-gtk \
ruby-all-dev \
silversearcher-ag \ # grep but much better
shutter \ # screenshot and quick editing
# libgoo-canvas-perl \
sublime-text \
synapse \ # starter
terminator \
touchpad-indicator \
tree \ # print the file structure
vlc \
wine-stable \
xclip \
xterm \
vim \
yank \
yarn \ # Facebook's npm
zip \
zsh zsh-doc


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

# note: for fkill, you may have to run sudo fkill
npm install -g trash-cli tldr jsinspect eslint fkill-cli trymodule browsersync

# change shell last
chsh -s /bin/zsh

# disable the insert button
xmodmap -e "keycode 118 ="

# install screenkey
git -C ~/opt clone https://github.com/wavexx/screenkey.git


# change shell
chsh -s /bin/zsh
