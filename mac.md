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

### iTerm alt b and alt f to move between buttons
1. Preferences (cmd ,) -> Profiles -> Keys -> Left Option as Escape
2. Change the Alt -> and Alt <- to "Send Escape Sequence" (esc+b and esc+f)

### Open files with VSC with `code` in the terminal
`Cmd-Shift-P` and click on the command `Shell Command: Install 'code' command in PATH`

```bash
# Install powerline-fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

### [App not being found by Spotlight?](https://apple.stackexchange.com/questions/236741/single-application-not-showing-up-in-spotlight)

### Word: Change the Default/Normal Layout
1. Select some text with your desired font & spacing 
2. Cmd-d (opens Font) window
3. Click the Advanced tab near the top
4. Click `Default ...` on the bottom left

### Word: Don't show start screen
1. Open Preferences (cmd ,)
2. Click the `General` button
3. Untick `Show Word Document Gallery`

Use Time Machine if you're switching macs. It's so simple!
