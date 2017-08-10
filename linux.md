### Programs to Install (Linux)
- Terminator
- Guake
- zsh and prezto 
- Fullchee/cfg (config files)
- Albert (app launcher)
- Calendar Indicator
- Grub Customizer

```bash
sudo apt-get install terminator
```

#### Firefox
Remove the firefox middle button click on Ubuntu
sudo apt-get <package1> <package2>

1) in the URL, type: about:config
search: middlemouse.contentLoadURL
and set it to false

2) Download this firefox addon to remove Ctrl Q
https://addons.mozilla.org/en-US/firefox/addon/disable-ctrl-q-shortcut/

#### Linux Mint
Disable global Linux Mint help when pressing F1
```bash 
sudo chmod -x /usr/local/bin/yelp
```

#### Blocking websites
```bash
sudo vim /etc/hosts

# add the line
127.0.0.1 youtube.com
127.0.0.1 www.youtube.com
```
