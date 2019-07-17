REM RUN ON AN ADMIN CMD
rem install choco first
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n=allowGlobalConfirmation

choco install cmder ^
f.lux ^
git.install ^
googledrive ^
keepass.install ^
paint.net ^
pip ^
procexp ^
python ^
sharex
sublimetext3 ^
vscode ^
youtube-dl ^

rem TODO: startup files
rem shell:common startup in Run (cmd r)
rem C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp

rem TODO: after installing cmder

# install my dotfiles after installing cmder (and git!)
git clone --bare https://github.com/Fullchee/windows-dotfiles.git C:\.cfg
alias config=git --git-dir=C:\.cfg --work-tree=C:\ $*
config config --local status.showUntrackedFiles no
config reset --hard
