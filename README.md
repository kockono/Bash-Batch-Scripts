# Bash-Bat-Scripts
- [Mac/Linux](#Mac/Linux-Users)
    - Netcore(netc)
    - Angular (ngc)
    - Git (gitc)
- [Windows](#Windows)
    - Netcore (netc)
    - Angular (ngc)
    - Git (gitc)

## Clone proyect
```sh
git clone https://github.com/kockono/Bash-Scripts
```

## Mac/Linux Users
#### 1. Copiar Archivo
```sh
sudo cp Linux-Mac/Git.sh /usr/local/bin/gitc
```

###### Cambiar el ``gitc`` si requieres otro script

#### 2. Darle permisos de ejecucion
```sh
chmod +x /usr/local/bin/gitc 
```

###### Cambiar el ``gitc`` si requieres darle permisos a otro script

Use ```netc``` for netcore, ```ngc``` for angular, ```gitc``` for git

## Windows
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
| `gitc f scope description_commit` | ✨ feature       |
| `gitc t scope description_commit` | 🧪 test          |
| `gitc a scope description_commit` | 🚑 ambulance     |
| `gitc fx scope description_commit`| 🐛 bug           |
| `gitc d scope description_commit` | 📝 documentation |
| `gitc r scope description_commit` | ⚰️ deadcode       |
| `gitc s scope description_commit` | 💄 style         |
| `gitc w scope description_commit` | 🚧 working       |
| `gitc p scope description_commit` | 📦 dependencies  |

### Cerrar commits
| Git Command                                     | Descripción  |
|-------------------------------------------------|--------------|
| `gitc resolve  scope number description_commit` | ✨ resolve   |
| `gitc resolves scope number description_commit` | ✨ resolves  |
| `gitc resolved scope number description_commit` | ✨ resolved  |
| `gitc fix      scope number description_commit` | 🐛 fix       |
| `gitc fixed    scope number description_commit` | 🐛 fixed     |
| `gitc fixes    scope number description_commit` | 🐛 fixes     |


### Menu gitc
```sh
Menú de opciones:
1.  Retornar a un commit  anterior sin crear rama temporal   : git reset --hard HEAD~\$numberCommits
2.  Eliminar archivos de git cache (.vscode, bin, obj)       : git rm --cached . -rf
3.  Encontrar un git en específico sensitive case            : git log --all --oneline --grep='gitName'
4.  Ver historial de log de un archivo en específico         : git log -p --follow -- 'fileName'
5.  Limpiar ramas locales                                    : git remote prune origin --dry-run
6.  Refusing to merge unrelated histories                    : git pull --allow-unrelated-histories --no-ff
7.  Retornar a un commit específico (crea una rama temporal) : git checkout <commit-hash>
8.  Ver log de numero de commits deseado                     : git log --oneline --max-count=\$numeroDeCommits
9.  Ver los origenes                                         : git remote -v
10. Agregar un nuevo origen                                  : git remote add <name_origin>
q. Salir
```

#### Feature
```sh
gitc f scripts implementacion de commits rapidos
```
```Output: git commit -m "✨ feat(scripts):  commits rapidos y faciles" && git push```

```✨ feat(scripts): commits rapidos y faciles```

#### Test
```sh
gitc t descuentos prueba unitarias
```
```Output: git commit -m "🧪 test(descuentos): prueba unitaria de descuentos" && git push```

```🧪 test(descuentos): prueba unitaria de descuentos```

#### Commit closed
```sh
✨ feat(scripts): commits rapidos y faciles
```

