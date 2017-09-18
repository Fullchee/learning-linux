1. Move the *.desktop icons are moved here: `/usr/share/applications/`
2. Store the icon file (could be a png) near the executable

Run this command if you encounter an errors
awk -F= '/Exec=/{system($2)}' your_desktop_file.desktop
