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

### VPN Shortcut on the Menu Bar

```bash
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/vpn.menu"
killall SystemUIServer -HUP
```
To remove it, hold CMD and drag the icon out of the menu bar

(TODO: put these into tables)
### Remote Connect to a server
cmd-k

### Screenshot
cmd-shift-4 to create a new image
cmd-ctrl-shift-4 to put it in the buffer

### Chrome Disable autocomplete in omnibox
alt-shift backspace

### Finder
cmd-shift-n: create a new folder
????: Create a new alias
cmd-shift-g: Goto file (autocompleted)

```bash
# Install powerline-fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

Use Time Machine if you're switching macs. It's so simple!
