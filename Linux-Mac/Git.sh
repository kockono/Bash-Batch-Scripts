# Windows
#! /usr/bin/bash
# Linux
#!/bin/bash

# Función para mostrar el menú principal
mostrar_menu() {
    echo "Menú de opciones:"
    echo "1. Reiniciar número de commits                             : git reset --hard HEAD~\$numberCommits"
    echo "2. Eliminar archivos de git cache (.vscode, bin, obj)      : git rm --cached . -rf"
    echo "3. Encontrar un git en específico sensitive case           : git log --all --oneline --grep='gitName'"
    echo "4. Ver historial de log de un archivo en específico        : git log -p --follow -- 'fileName'"
    echo "5. Limpiar ramas locales                                   : git remote prune origin --dry-run"
    echo "6. Retornar a un commit específico sin crear rama temporal : git pull --allow-unrelated-histories --no-ff"
    echo "q. Salir"
}

# Función para procesar la opción seleccionada del menú principal
procesar_opcion() {
    mostrar_menu
    read -p "Selecciona una opción: " opcion
    local opcion=$1
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
            echo "Nombre del commit a buscar (sensitive case)"
            read gitName
            echo "$(git log --all --oneline --grep='$gitName')"
            ;;
        4)
            echo "Introduzca el nombre del archivo para ver su historial"
            read fileName
            echo "$(git log -p --follow -- $fileName)"
            ;;
        5)
            echo "Ramas limpiadas con éxito"
            echo "$(git remote prune origin --dry-run)"
            ;;
        6)
            echo ""
            read gitName
            echo "$(git pull --allow-unrelated-histories --no-ff)"
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
    local scope=$2
    local description_commit="$3 $4 $5 $6 $7 $8 $9"
    case $tipo_commit in
        f)
            echo "Descripcion del Feature:"
            echo $(git add . && git commit -m "feat($scope): :sparkles: $description_commit" && git push)
            ;;
        fx)
            echo "Descripcion del Fix"  
            echo $(git add . && git commit -m "fix($scope): :bug: $description_commit" && git push)
            ;;
        d)
            echo "Descripcion del Documentation"
            echo $(git add . && git commit -m "docs($scope): :memo: $description_commit" && git push)
            ;;
        t)
            echo "Descripcion del Test"
            echo $(git add . && git commit -m "test($scope): :test_tube: $description_commit" && git push)
            ;;
        r)
            echo "Descripcion del Remove dead code"
            echo $(git add . && git commit -m "remove($scope): :coffin: $description_commit" && git push)
            ;;
        h)
            echo "Descripcion del HotFix"
            echo $(git add . && git commit -m "hotfix($scope): 🚑 $description_commit" && git push)
            ;;
        s)
            echo "Descripcion del Style"
            echo $(git add . && git commit -m "style($scope): 💄 $description_commit" && git push)
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
