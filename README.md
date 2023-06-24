# Bash-Bat-Scripts
- [Mac/Linux](#Mac/Linux-Users)
    - Netcore(netc)
    - Angular (ngc)
    - Git (gitc)
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

### Ejemplos de uso de gitc
| Git Command               | Descripción              |
|---------------------------|--------------------------|
| `gitc f contexto description_commit`| ✨ feature             |
| `gitc t contexto description_commit`| 🧪 test                |
| `gitc a contexto description_commit`| 🚑 ambulance           |
| `gitc b contexto description_commit`| 🐛 bug                 |
| `gitc d contexto description_commit`| 📝 documentation       |
| `gitc r contexto description_commit`| ⚰️ deadcode            |
| `gitc r contexto description_commit`| 💄 style               |

#### Feature
```sh
gitc f scripts implementacion de commits rapidos
```
```Output: git add . && git commit -m "feat(scripts): ✨ commits rapidos y bonitos" && git push```

#### Test
```sh
gitc t descuentos prueba unitarias
```
```Output: git add . && git commit -m "test(descuentos): 🧪 prueba unitaria de descuentos" && git push```
