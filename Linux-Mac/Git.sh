# Windows
#! /usr/bin/bash
# Linux
#!/bin/bash

# Función para mostrar el menú principal
mostrar_menu() {
    echo "Menú de opciones:"
    echo "a. Crear Commit de todos los cambios y push                : git add . && git commit -m 'CommitName' && git push"
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
    local opcion=$1
    case $opcion in
        a)
            sub_menu_a
            ;;
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

# Función para mostrar el submenú de opciones de commits
sub_menu_a() {
    echo "Submenú - Opciones de commits:"
    echo "a. Feature"
    echo "1. Fix"
    echo "2. Documentation"
    echo "3. Test"
    echo "4. Remove dead code"
    echo "5. HotFix"
    echo "q. Regresar al menú principal"

    read -p "Selecciona una opción: " opcion_commit
    opciones_commits $opcion_commit
}

opciones_commits() {
    local tipo_commit=$1
    echo $(git add .)
    case $tipo_commit in
        a)
            echo "Descripcion del Feature:"
            read commitName
            echo $(git commit -m "feat($2): :sparkles: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        1)
            echo "Descripcion del Fix"
            read commitName  
            echo $(git commit -m "fix($2): :bug: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        2)
            echo "Descripcion del Documentation"
            read commitName
            echo $(git commit -m "docs($2): :memo: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        3)
            echo "Descripcion del Test"
            read commitName
            echo $(git commit -m "test($2): :test_tube: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        4)
            echo "Descripcion del Remove dead code"
            read commitName
            echo $(git commit -m "remove($2): :coffin: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        5)
            echo "Descripcion del HotFix"
            read commitName
            echo $(git commit -m "hotfix($2): :ambulance: $3 $4 $5 $6 $7 $8 $9" && git push)
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

fast_commit() {
    local tipo_commit=$1
    case $tipo_commit in
        f)
            echo "Descripcion del Feature:"
            echo $(git add . && git commit -m "feat($2): :sparkles: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        fx)
            echo "Descripcion del Fix"  
            echo $(git add . && git commit -m "fix($2): :bug: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        d)
            echo "Descripcion del Documentation"
            echo $(git add . && git commit -m "docs($2): :memo: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        t)
            echo "Descripcion del Test"
            echo $(git add . && git commit -m "test($2): :test_tube: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        r)
            echo "Descripcion del Remove dead code"
            echo $(git add . && git commit -m "remove($2): :coffin: $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        h)
            echo "Descripcion del HotFix"
            echo $(git add . && git commit -m "hotfix($2): 🚑 $3 $4 $5 $6 $7 $8 $9" && git push)
            ;;
        s)
            echo "Descripcion del Style"
            echo $(git add . && git commit -m "style($2): 💄 $3 $4 $5 $6 $7 $8 $9" && git push)
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

# Valida sí tiene mas de 2 argumentos
if [[ $# -gt 2 ]]; then
    fast_commit 
else
    if [ $# -eq 1 ]; then
        sub_menu_a
        exit 0
    else
      procesar_opcion "$opcion"
       echo
    fi
fi


# Inicio del programa
mostrar_menu
read -p "Selecciona una opción: " opcion
procesar_opcion $opcion
echo

