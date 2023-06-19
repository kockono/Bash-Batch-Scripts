# Bash-Bat-Scripts
- [Mac/Linux](#Mac/Linux-Users)
    - Netcore
    - Angular
    - Git
- [Windows](#Windows)
    - Netcore (netc)
    - Angular (ngc)
    - Git (gitc)

### Clone proyect
```sh
git clone https://github.com/kockono/Bash-Scripts
```
### Mac/Linux Users
```sh
cp NetCore.sh /usr/local/bin/netc & 
cp Angular.sh /usr/local/bin/ngc &
cp Git.sh /usr/local/bin/gitc &

```
#### Darle permisos de ejecucion
```sh
chmod +x /usr/local/bin/netc
```

Use ```netc``` for netcore, ```ngc``` for angular, ```gitc``` for git

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
Use ```netc``` for netcore, ```ngc``` for angular, ```gitc``` for git
