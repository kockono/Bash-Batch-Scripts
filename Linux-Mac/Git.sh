# Windows
#! /usr/bin/bash
# Linux
#!/bin/bash

# Función para mostrar el menú principal
mostrar_menu() {
    echo "Menú de opciones:"
    echo "1.  Retornar a un commit  anterior sin crear rama temporal   : git reset --hard HEAD~\$numberCommits"
    echo "2.  Eliminar archivos de git cache (.vscode, bin, obj)       : git rm --cached . -rf"
    echo "3.  Encontrar un git en específico sensitive case            : git log --all --oneline --grep='gitName'"
    echo "4.  Ver historial de log de un archivo en específico         : git log -p --follow -- 'fileName'"
    echo "5.  Hacer Cherry pick                                        : git cherry-pick <commit_id>"
    echo "6.  Refusing to merge unrelated histories                    : git pull --allow-unrelated-histories --no-ff"
    echo "7.  Retornar a un commit específico (crea una rama temporal) : git checkout <commit-hash>"
    echo "8.  Ver log de numero de commits deseado                     : git log --oneline --max-count=\$numeroDeCommits"
    echo "9.  Eliminar ramas mergeadas    locales                      : git branch --merged | grep -v "\*" | xargs -n 1 git branch -d"
    echo "10. Eliminar ramas no mergeadas locales                      : git branch --no-merged | grep -v "\*" | xargs -n 1 git branch -D"
    echo "11. Limpir ramas locales y mergeadas                         : git remote prune origin --dry-run && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d"  
    echo "q. Salir"
}

# Función para procesar la opción seleccionada del menú principal
procesar_opcion() {
    mostrar_menu
    read -p "Selecciona una opción: " opcion
    case $opcion in
        1)
            echo "¿Número de commits a reiniciar?"
            read numberCommits
            echo "$(git reset --hard HEAD~$numberCommits)"
            ;;
        2)
            echo "$(git rm --cached . -rf)"
            ;;
        3)
            echo "Nombre del commit a buscar (sensitive case) Mayus, Minus, etc"
            read gitName
            echo "$(git log --all --oneline --grep='$gitName')"
            ;;
        4)
            echo "Introduzca el nombre del archivo para ver su historial"
            read fileName
            echo "$(git log -p --follow -- $fileName)"
            ;;
        5)
            echo "Cherry pick requiere el id del commit"
            read idCommit
            echo "$(git cherry-pick $idCommit)"
            ;;
        6)
            echo ""
            echo "$(git pull --allow-unrelated-histories --no-ff)"
            ;;
        7)
            echo "Ingresa la id del commit al que quieres regresar"
            echo "$(git log --oneline --max-count=5)"
            read idCommit
            echo "$(git checkout $idCommit)"
            ;;
        8)
            echo "Ingresa el numero de commits que deseas ver"
            read numeroDeCommits
            echo "$(git log --oneline --max-count=$numeroDeCommits)"
            echo "$(git checkout $idCommit)"
            ;;
        9)
            echo "$(git branch --merged | grep -v "\*" | xargs -n 1 git branch -d)"
            ;;
        10)
            echo "$(git branch --no-merged | grep -v "\*" | xargs -n 1 git branch -D)"
            ;;
        11)
            echo "$(git remote prune origin --dry-run && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d)"
            ;;
        q)
            echo "Saliendo del programa..."
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, selecciona una opción válida."
            ;;
    esac
}

# Recibir multiples argumentos para el commit
fast_commit() {
    local tipo_commit=$1
    local issue=$3
    local scope=$2
    local description_commit="$3 $4 $5 $6 $7 $8 $9"
    case $tipo_commit in
        f)
            echo "Feature:"
            echo $(git commit -m ":sparkles: feat($scope): $description_commit" && git push)
            ;;
        fx)
            echo "Fix"  
            echo $(git commit -m ":bug: fix($scope): $description_commit" && git push)
            ;;
        d)
            echo "Documentation"
            echo $(git commit -m ":memo: docs($scope): $description_commit" && git push)
            ;;
        t)
            echo "Test"
            echo $(git commit -m "🧪 test($scope): $description_commit" && git push)
            ;;
        r)
            echo "Remove dead code"
            echo $(git commit -m ":coffin: remove($scope): $description_commit" && git push)
            ;;
        h)
            echo "HotFix"
            echo $(git commit -m "🚑 hotfix($scope): $description_commit" && git push)
            ;;
        s)
            echo "Style"
            echo $(git commit -m "💄 style($scope): $description_commit" && git push)
            ;;
        w)
            echo "Working"
            echo $(git commit -m "🚧 working($scope): $description_commit" && git push)
            ;;
        p)
            echo "Dependencies"
            echo $(git commit -m "📦 chore($scope): $description_commit" && git push)
            ;;
        resolve)
            echo "Resolve"
            echo $(git commit -m "✨ resolve #$issue ($scope): $4 $5 $6 $7 $8 $9" && git push)
            ;;
        resolves)
            echo "Resolves"
            echo $(git commit -m "✨ resolves #$issue ($scope): $4 $5 $6 $7 $8 $9" && git push)
            ;;
        resolved)
            echo "Resolved"
            echo $(git commit -m "✨ resolved #$issue ($scope): $4 $5 $6 $7 $8 $9" && git push)
            ;;
        fix)
            echo "Fix"
            echo $(git commit -m "🐛 fix #$issue ($scope): $4 $5 $6 $7 $8 $9" && git push)
            ;;
        fixed)
            echo "Fixed"
            echo $(git commit -m "🐛 fixed #$issue ($scope): $4 $5 $6 $7 $8 $9" && git push)
            ;;
        fixes)
            echo "Fixes"
            echo $(git commit -m "🐛 fixes #$issue ($scope): $4 $5 $6 $7 $8 $9" && git push)
            ;;
        q)
            echo "Saliendo del programa..."
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, selecciona una opción válida."
            ;;
    esac
}

# Inicio del programa
# Valida sí tiene mas de 2 argumentos
if [ $# -gt 2 ]; then
    fast_commit $1 $2 $3 $4 $5 $6 $7 $8 $9
else
  procesar_opcion "$opcion"
  echo
fi
