# Windows
#! /usr/bin/bash
# Linux
#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
    echo "Menú de opciones:"
    echo "1. Reiniciar numero de commits"
    echo "2. Eliminar archivos de git cache (.vscode, bin, obj, etc))"
    echo "3. Encontrar un git en especifico senstive case"
    echo "4. Ver historial de log de un archivo en especifico"
    echo "5. Limpiar ramas locales"
    echo "6. Retornar a un commit especifico sin crear rama temporal"
    echo "q. Salir"
}

# Función para procesar la opción seleccionada
procesar_opcion() {
    local opcion=$1
    case $opcion in
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
mostrar_menu
read -p "Selecciona una opción: " opcion
procesar_opcion $opcion
echo

