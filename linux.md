# TODO: Figure out how to sync prezto if you don't already have it installed

### Programs for Linux to Install (Linux)
- Terminator
- Guake
- zsh and prezto 
- Fullchee/cfg (config files)
- Albert (app launcher)
- Calendar Indicator
- Grub Customizer

```bash
# change shell
chsh -s /bin/zsh

# adding repos
add-apt-repository ppa:atareao/atareao
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo add-apt-repository ppa:gnome-terminator/ppa
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo add-apt-repository ppa:webupd8team/unstable
sudo add-apt-repository ppa:videolan/stable-daily
sudo add-apt-repository ppa:webupd8team/sublime-text-3

sudo apt-get update

# installing the repos
sudo apt-get install calendar-indicator albert terminator grub-customizer guake vlc sublime-text-installer


# install powerline-fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

Everything else can be installed manually (see the main README.md)

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
