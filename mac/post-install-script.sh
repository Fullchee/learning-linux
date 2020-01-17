#!/bin/sh
# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
# brew install
brew install \
cask \
coreutils \
ffmpeg \
node \
pandoc \
peco \
the_silver_searcher \
tree \
yank \
youtube-dl;

# cask install
brew cask install \
meld \
spectacle;

# VPN Shortcut on the Menu Bar
# To remove it, hold CMD and drag the icon out of the menu bar
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/vpn.menu"
killall SystemUIServer -HUP

# Install powerline-fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Path at the top of finder
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true && killall Finder

npm install -g npm \
babel-eslint \
eslint \
eslint-config-airbnb \
eslint-plugin-import \
eslint-plugin-jsx-a11y \
eslint-plugin-react \
eslint-plugin-react-hooks \
jest \
tldr \
write-good

# Tell system when Xcode utilities live:
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

# install my dotfiles after installing prezto
git clone --bare https://github.com/Fullchee/mac-dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' $@
config config --local status.showUntrackedFiles no
config reset --hard
touch ~/.private_aliases

# show dotfiles in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# download iTerm
wget https://iterm2.com/downloads/stable/latest


# install my dotfiles after installing prezto
git clone --bare https://github.com/Fullchee/mac-dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' $@
config config --local status.showUntrackedFiles no
config reset --hard
touch ~/.private_aliases
config update-index --assume-unchanged ~/.npmrc  # don't want to accidentally add npm credentials

