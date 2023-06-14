# Bash-Bat-Scripts
- [Mac/Linux](#Mac/Linux-Users)
    - Netcore
    - Angular
    - Git
- [Windows](#Windows)
    - Netcore (netc)
    - Angular (ngc)
    - Git (gitc)

```sh
git clone https://github.com/kockono/Bash-Scripts
```
### Mac/Linux Users
```sh
cp NetCore.sh /usr/local/bin/netc & 
cp Angular.sh /usr/local/bin/ngc &
cp Git.sh /usr/local/bin/gitc &

```
Use ```netc``` for netcore, ```ngcc``` for angular

### Windows
```bat
@echo off
set "origen=%CD%"
set "destination=C:\commands"

move "%origen%\*.*" "%destination%"

if not exist "%destination%" (
    mkdir "%destination%"
)

echo Archivos movidos exitosamente.

setx PATH "%PATH%;C:\commands"
```
