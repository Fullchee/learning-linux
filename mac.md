### Programs to install (mac only)
- Homebrew
- Spectacle (shortcuts for window sizing)
- MacPass
- Google Drive for Mac
- iTerm2
- BarTunes (on iTunes store)
- z (image editor that's like paint, there could be better alternatives)
- SourceTree (Atlassian git GUI for nice looking diffs)
- zsh and prezto
- Cheatsheet
- Quick Look Markdown (preview Markdown in Finder)

```bash
brew update
# brew install
brew install tree the_silver_surfer cask node cask

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
```

### Moving between macs: use time machine

### Remote Connect to a server
cmd-k

### Screenshot
cmd-shift-4 to create a new image
cmd-ctrl-shift-4 to put it in the buffer

### Chrome Disable autocomplete in omnibox
alt-shift backspace

### Finder
- cmd-shift-n: create a new folder
- cmd-L Create a new alias
- cmd-shift-g: Goto file (autocompleted)
- cmd-shift-.: toggle hidden files
- `defaults write com.apple.finder _FXShowPosixPathInTitle -bool true`, `killall Finder`
- View -> Show Path Bar


### iTerm alt b and alt f to move between buttons
1. Preferences (cmd ,) -> Profiles -> Keys -> Left Option as Escape
2. Change the Alt -> and Alt <- to "Send Escape Sequence" (esc+b and esc+f)

### Open files with VSC with `code` in the terminal
`Cmd-Shift-P` and click on the command `Shell Command: Install 'code' command in PATH`

### [App not being found by Spotlight?](https://apple.stackexchange.com/questions/236741/single-application-not-showing-up-in-spotlight)
- add and remove whatever is not being found in Spotlight's list of directories it won't scan

### Spotlight: Open the item's containing folder
- cmd-enter
### Word: Change the Default/Normal Layout
1. Select some text with your desired font & spacing 
2. Cmd-d (opens Font) window
3. Click the Advanced tab near the top
4. Click `Default ...` on the bottom left

### Word: Don't show start screen
1. Open Preferences (cmd ,)
2. Click the `General` button
3. Untick `Show Word Document Gallery`

### Calendar won't sync
Preferences -> Internet Accounts -> Untick and tick calendar

### Open folders with an app in Finder (eg iTerm, VSC)
1. Find the applescripts and create apps for them (won't be posted here, applescript & apps will update)
2. Hold cmd and drag and drop the app onto the area beside the search bar

### Reset SMC (System Management Controller, hardware settings)
1. Turn off laptop
2. Keep Power cable plugged in
3. Hold Shift+Control+Option+Power
