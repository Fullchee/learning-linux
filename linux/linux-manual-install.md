# Steps
- [ ] install anaconda3
- [ ] zsh-scripts.sh
- [ ] Play On Linux
	- [ ] https://wiki.winehq.org/Ubuntu
	- [ ] Install Office 2007 (word and excel)
```
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key

# Get the new name for the repo!
# https://wiki.winehq.org/Ubuntu
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'

sudo dpkg --add-architecture i386
sudo apt update
sudo aptitude install winehq-stable
```
- [ ] Chrome Login
- [ ] Firefox Login
- [ ] Sublime Text and VSCode Sync (LastPass)
- [ ] Git Repos
- [ ] [Anki](https://apps.ankiweb.net/)
	- [ ] [install all the plugins](https://gist.github.com/Fullchee/20d835b5d2d88eabc778f75f169015d2)
- [ ] use numix theme
- [ ] shutter
	- [ ] enable print screen shortcut `shutter -s'
- [ ] sudo crontab -e
	- [ ] `* 1 * * * sudo poweroff`
- [ ] crontab -e
	- [ ] `* 1 * * * gnome-session-quit --no-prompt`
- [ ] Setup bluetooth devices
	- [ ] portable speaker
	- [ ] wireless headphones
- [ ] [ssh keys](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2)
- [ ] RescueTime https://www.rescuetime.com/download_linux
	- [ ] login to Chrome extension
- [ ] `im-config` and use xim (ibus, the default has the annoying ctrl shift e shortcut)
   - [ ] then reset computer
- [ ] Settings -> Sound -> Sounds -> Starting Cinnamon (disable)
- [ ] [grive](https://github.com/vitalif/grive2) (run grive in ~/grive)
- [ ] Printers
```sh
# CANON MF4770n
wget http://pdisp01.c-wss.com/gdl/WWUFORedirectTarget.do?id=MDEwMDAwOTIzNjAz&cmp=ABR&lang=EN
cd linux-UFRII-drv-v370-usen
sudo ./install.sh
cd ..
rm -rf linux-UFRII-drv-v370-usen
rm -f linux-UFRII-drv-v370-usen-06.tar.gz
```
- [ ] Java
	- [ ] [JDK](https://www.oracle.com/technetwork/java/javase/downloads/index.html)
	- [ ] [Intellij](https://www.oracle.com/technetwork/java/javase/downloads/index.html)
	- [ ] Android Studio
- [ ] GRUB Customizer
   - [ ] use a custom background image
