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
sudo cd Linux-Mac & cp Git.sh /usr/local/bin/gitc
```
###### Cambiar el ``gitc`` si requieres otro script

#### Darle permisos de ejecucion
```sh
chmod +x /usr/local/bin/gitc 
```

###### Cambiar el ``gitc`` si requieres darle permisos a otro script

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
| `gitc f scope description_commit`| ✨ feature             |
| `gitc t scope description_commit`| 🧪 test                |
| `gitc a scope description_commit`| 🚑 ambulance           |
| `gitc fx scope description_commit`| 🐛 bug                |
| `gitc d scope description_commit`| 📝 documentation       |
| `gitc r scope description_commit`| ⚰️ deadcode             |
| `gitc s scope description_commit`| 💄 style               |

#### Feature
```sh
gitc f scripts implementacion de commits rapidos
```
```Output: git add . && git commit -m "feat(scripts): ✨ commits rapidos y faciles" && git push```

```Commit: feat(scripts): ✨ commits rapidos y faciles```

#### Test
```sh
gitc t descuentos prueba unitarias
```
```Output: git add . && git commit -m "test(descuentos): 🧪 prueba unitaria de descuentos" && git push```

```Commit: test(descuentos): 🧪 prueba unitaria de descuentos```
