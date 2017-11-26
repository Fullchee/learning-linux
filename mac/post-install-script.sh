
# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
# brew install
brew install tree the_silver_surfer cask node cask yank coreutils ffmpeg youtube-dl

# cask install
brew cask install spectacle qlmarkdown meld

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

npm install -g trash-cli tldr

# Tell system when Xcode utilities live:
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

# Set "opendiff" as the default mergetool globally:
git config --global merge.tool opendiff