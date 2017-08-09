### VPN Shortcut on the Menu Bar

```bash
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/vpn.menu"
killall SystemUIServer -HUP
```
To remove it, hold CMD and drag the icon out of the menu bar
