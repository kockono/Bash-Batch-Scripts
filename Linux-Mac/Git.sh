# Windows
#! /usr/bin/bash
# Linux
#!/bin/bash

# Función para mostrar el menú

commit_rapido()
{
    echo $(git add . && git commit -m "$1 $2 $3 $4 $5 $6 $7 $8 $9" && git push)
}

# Validar si se proporciona un parámetro al comando
if [ $# -eq 1 ]; then
    commit_rapido "$1"
    exit 0
fi

mostrar_menu() {
    echo "Menú de opciones:"
    echo "a. Crear Commit de todos los cambios y push                : git add . ^&^& git commit -m "CommitName" ^&^& git push"
    echo "1. Reiniciar numero de commits                             : git reset --hard Head~$"
    echo "2. Eliminar archivos de git cache (.vscode, bin, obj)      : git rm --cached . -rf"
    echo "3. Encontrar un git en especifico senstive case            : git log --all --oneline --grep='gitName'"
    echo "4. Ver historial de log de un archivo en especifico        : git log -p --follow -- "fileName""
    echo "5. Limpiar ramas locales                                   : git remote prune origin --dry-run"
    echo "6. Retornar a un commit especifico sin crear rama temporal : git pull --allow-unrelated-histories --no-ff"
    echo "q. Salir"
}

# Función para procesar la opción seleccionada
procesar_opcion() {
    local opcion=$1
    case $opcion in
        a)
            echo "¿ nombre del commit ?"
            read commitName
            echo $(git add . && git commit -m "${commitName}" && git push)
            ;;
        1)
            echo "¿ numero de commits a reiniciar ?"
            read nubmerCommits
            echo $(git reset --hard Head~${nubmerCommits}})
            ;;
        2)
            echo $(git rm --cached . -rf)
            ;;
        3)
            echo "nombre del commit a buscar senstive case"
            read gitName
            echo $(git log --all --oneline --grep=\'${gitName}\')
            ;;
        4)
            echo "Introduzca el nombre del archivo para ver su historial"
            read fileName
            echo $(git log -p --follow -- ${fileName})
            ;;
        5)
            echo "Ramas limpiadas con exito"
            echo $(git remote prune origin --dry-run)
            ;;
        6)
            echo ""
            read gitName
            echo $(git pull --allow-unrelated-histories --no-ff)
            ;;
        6)
            echo "Introduzca el commit id a regresar la rama"
            read commitId
            echo $(git reset --hard ${commitId} && git clean -f)
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
commit_rapido
mostrar_menu
read -p "Selecciona una opción: " opcion
procesar_opcion $opcion
echo

