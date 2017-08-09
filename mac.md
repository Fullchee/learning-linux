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

### VPN Shortcut on the Menu Bar

```bash
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/vpn.menu"
killall SystemUIServer -HUP
```
To remove it, hold CMD and drag the icon out of the menu bar

