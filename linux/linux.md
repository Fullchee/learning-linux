## Copy all user settings onto an other computer
Create a tarball for /home/my-username and extract it on the same path


## Manual Stuff

### To be automated
* install Todoist

### Linux Mint
* Install the cinnamon applets: Pomodoro, Weather

#### Firefox
Remove the firefox middle button click on Ubuntu

1) in the URL, type: about:config
search: middlemouse.contentLoadURL
and set it to false


#### Block a website script
```bash
# redirects youtube to localhost
echo "127.0.0.1 youtube.com\n127.0.0.1 www.youtube.com" | sudo tee -a /etc/hosts
```
#### Gimp: crop a picture
shift-c, draw the rectangle of the image you want to keep, press enter to delete everything else

#### Toggle Maximize (not fullscreen)
alt-f10

Put all executable portable programs into `~/opt` from now on to mimic the Linux FS standard
https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard
