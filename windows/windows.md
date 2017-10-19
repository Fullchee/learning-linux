### How to get my IP Address (command line)
`ipconfig`

### Folder Shortcuts
1. Folder Shortcut to the Taskbar
    1. Create a new shortcut (Desktop -> right click -> New shortcut) with the command `explorer.exe <path to folder>`
    2. Change the icon (Right click shortcut -> Properties)
    3. Drag the shortcut to the taskbar
2. Folder shortcut in the start menu

### Connect to other computers on the same network
File Explorer: Type the following in the path: `\\<any computer IP Address>\<path>`

### Open File Explorer from cmd
`start <path>`

For Example: `start .`

### Make ls an alias of dir
`doskey ls=dir`

### Connect to a networked Windows Computer from mac
**GUI**: Microsoft Remote Desktop (from App Store)
**command line**: 
1. Finder: Cmd-k and connect to the Windows instance.
2. Terminal: The Windows file system is accessible from the directory: `/Volumes/`
