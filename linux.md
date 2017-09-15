## Copy all user settings onto an other computer
Create a tarball for /home/my-username and extract it on the same path

### Programs for Linux to Install (Linux)
- Terminator
- Guake
- zsh and prezto 
- Fullchee/dotfiles (config files)
- Albert (app launcher)
- Calendar Indicator
- Grub Customizer
- Tree (pretty print directory structure)
- xclip (copy cwd to clipboard)
- Workrave (take breaks every hour)
- Realpath

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
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:noobslab/apps # playonlinux

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

# installing the repos
sudo apt-get install calendar-indicator albert terminator grub-customizer \
guake vlc sublime-text imagemagick ttyrec gcc x11-apps \
touchpad-indicator tree \
numix-gtk-theme numix-icon-theme \
redshift redshift-gtk xclip workrave realpath yank playonlinux


# install powerline-fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# install ttygif
git clone https://github.com/icholy/ttygif.git
cd ttygif
make
sudo make install
cd ..
rm -rf ttygif

# if you have a synaptics touchpad, you need this command for touchpad-indicator
killall syndaemon  

# install fzy
wget https://github.com/jhawthorn/fzy/releases/download/0.9/fzy_0.9-1_amd64.deb
sudo dpkg -i fzy_0.9-1_amd64.deb
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

#### Block a website script
```bash
# redirects youtube to localhost
echo "127.0.0.1 youtube.com\n127.0.0.1 www.youtube.com" | sudo tee -a /etc/hosts
```
#### Gimp: crop a picture
shift-c, draw the rectangle of the image you want to keep, press enter to delete everything else

#### Toggle Maximize (not fullscreen)
alt-f10
