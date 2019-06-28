rem install choco first

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

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
visualstudiocode ^
youtube-dl ^

