### Programs to install (mac only)
- BarTunes (App store): menu bar shortcuts for iTunes

- Cheatsheet
- Google Drive for Mac
- Homebrew
- iTerm2
- MacPass
- Quick Look Markdown (preview Markdown in Finder)
- SourceTree (Atlassian git GUI for nice looking diffs)
- Spectacle (shortcuts for window sizing)
- zsh and prezto
- Karabiner (swap control with fn)

```bash
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
```

### Moving between macs: use time machine

### Remote Connect to a server
1. Open Finder
2. cmd-k

### Screenshot
cmd-shift-4: screenshot in a timestamped new image on the desktop
cmd-ctrl-shift-4: store screenshot in clipboard

### Chrome Disable autocomplete in omnibox
alt-shift backspace

### Finder Shortcuts
- cmd-shift-n: create a new folder
- cmd-L Create a new alias
- cmd-shift-g: Goto file (autocompleted)
- cmd-shift-.: toggle hidden files
- View -> Show Path Bar
- alt cmd space to open up finder

#### Finder Search file type
Type `kind:doc` to only select .doc types

#### Open folders with an app in Finder (eg iTerm, VSC)
1. Find the applescripts and create apps for them (won't be posted here, applescript & apps will update)
2. Hold cmd and drag and drop the app onto the area beside the search bar

#### Create a "Copy Path" service for Finder (Credit to OSX Daily: http://osxdaily.com/2013/06/19/copy-file-folder-path-mac-os-x/)
1. Launch Automator and create a new “Service”
2. Use the search function to look for “Copy to Clipboard” and drag that into the rightside panel of the Service
3. Set ‘Service recieves selected’ to “files or folders” and ‘in’ to “Finder” as shown in the screen shot below
4. Save the Service with a name like “Copy Path”

### Keyboard Settings
- **Use tab to navigate any menu**: System Preferences -> Keyboard -> Shortcuts (tab) -> All Controls (bottom of menu)
- **Disable ctrl up/down/left/right** (in Mission Control)
  - these shortcuts can just be activated with the touchpad gesture, you need the mouse anyway to quickly switch
  - can also now use these shortcuts on for text editors and other programs, especially via Remote Desktop connection to Windows
- **disable the make new sticky note**

### iTerm
- alt -> and <- to move a word at a time (Linux uses the super/meta key)
  1. Preferences (cmd ,) -> Profiles -> Keys -> Left Option as Escape
  2. Change the Alt -> and Alt <- to "Send Escape Sequence" (esc+b and esc+f)
- shortcut to toggle iTerm: Preferences -> Keys tab -> Hotkey section
- cmd-g: find next search result (instead of pressing enter), can also do cmd-shift-g to search forward in time
- http://teohm.com/blog/working-effectively-with-iterm2/
- cmd /: show where the cursor is

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

### Reset SMC (System Management Controller, hardware settings)
1. Turn off laptop
2. Keep Power cable plugged in
3. Hold Shift+Control+Option+Power

### Only copy/paste the formatting (useful in Notes, Google Drive, not Word, especially for strikethrough)
cmd-alt-c and cmd-alt-v

### Change default app for file extension
1. Right click a file with that extension to "Get Info"
2. Near the bottom, in "Open with", change the app and press "Change All..."

### Hide apps (Finder, iTunes, Mail) from the cmd-tab menu
https://apple.stackexchange.com/questions/92004/is-there-a-way-to-hide-certain-apps-from-the-cmdtab-menu

### Safari
Show the entire URL (somewhere in the settings)

### Use x-code FileMerge as the 
```sh
# Tell system when Xcode utilities live:
sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer

# Set "opendiff" as the default mergetool globally:
git config --global merge.tool opendiff
```
