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
sudo cp NetCore.sh /usr/local/bin/netc & 
cp Angular.sh /usr/local/bin/ngc &
cp Git.sh /usr/local/bin/gitc &

```
#### Darle permisos de ejecucion
```sh
chmod +x /usr/local/bin/nombre_del_script
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

### Ejemplos de uso de git
| Git Command               | Descripción              |
|---------------------------|--------------------------|
| `gitc f description_commit`| ✨ feature             |
| `gitc t description_commit`| 🧪 test                |
| `gitc a description_commit`| 🚑 ambulance           |
| `gitc b description_commit`| 🐛 bug                 |
| `gitc d description_commit`| 📝 documentation       |
| `gitc r description_commit`| ⚰️ deadcode            |

#### Feature
```sh
gitc f implementacion de commits rapidos
```
#### Test
```sh
gitc t prueba unitaria de descuentos
```
```Output: git add . && git commit -m "test: 🧪 prueba unitaria de descuentos" && git push```
