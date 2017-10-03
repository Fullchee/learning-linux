## Copy all user settings onto an other computer
Create a tarball for /home/my-username and extract it on the same path

### Programs for Linux to Install (Linux)
- Terminator
- Guake
- zsh and prezto 
- Fullchee/dotfiles (config files)
- App Launcher (Synapse or Albert)
- Grub Customizer
- Tree (pretty print directory structure)
- xclip (copy cwd to clipboard)
- Workrave (take breaks every hour)
- Realpath


Everything else can be done manually (see the main README.md)

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

#### Block a website script
```bash
# redirects youtube to localhost
echo "127.0.0.1 youtube.com\n127.0.0.1 www.youtube.com" | sudo tee -a /etc/hosts
```
#### Gimp: crop a picture
shift-c, draw the rectangle of the image you want to keep, press enter to delete everything else

#### Toggle Maximize (not fullscreen)
alt-f10

Put all executable files into `~/opt` from now on to mimic the Linux FS standard
https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard
