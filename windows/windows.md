## To be automated
### Dot files


### Add to the path
```batch

```
- path to subl.exe
- path to git
- path to node
- path to VSCode
- path to python
- path to an `aliases` folder of batch files (to mimic a UNIX terminal workflow)


## File Explorer
#### Folder Shortcuts
1. Folder Shortcut to the Taskbar
    1. Create a new shortcut (Desktop -> right click -> New shortcut) with the command `explorer.exe <path to folder>`
    2. Change the icon (Right click shortcut -> Properties)
    3. Drag the shortcut to the taskbar
2. Folder shortcut in the start menu

### Connect to a networked Windows Computer from mac
**GUI**: Microsoft Remote Desktop (from App Store)
**command line**: 
1. Finder: Cmd-k and connect to the Windows instance.
2. Terminal: The Windows file system is accessible from the directory: `/Volumes/`

### Connect to other computers on the same network
File Explorer: Type the following in the path: `\\<any computer IP Address>\<path>`

## Command Line
### How to get my IP Address (command line)
`ipconfig`

### How to redirect the output to a file
`<cmd> > stderrAndOut.log 2>&1`

### Open File Explorer from cmd
`start <path>`

### Cmder: how to turn off git (faster in large git repos)
https://github.com/cmderdev/cmder/issues/447#issuecomment-244149494

## Batch Files
**Comment/Remark**: `REM this line is a comment`
`@ECHO OFF`: don't print the actual commands that are run, just the output of those commands
- usually the first line of a batch file
**variables in a batch file**: `Set <var-name>=<var-value>`


### View the command that created a process
1. Task Manager (Ctrl-shift-esc)
2. Go to the processes tab
3. Right click and click details
4. Show Columns
5. Command line
