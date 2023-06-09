# Windows
#! /usr/bin/bash 
# Linux
#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
    echo "Menú de opciones:"
    echo "1. MakeMigration"
    echo "2. MakeMigration and UpdateDatabase" 
    echo "3. Test"
    echo "4. Salir"
}

# Función para procesar la opción seleccionada
procesar_opcion() {
    local opcion=$1
    case $opcion in
        1)
            echo "What is the table name for migration ?"
            read nameTable
            echo $(dotnet ef migrations add "Add$nameTable\Table" --startup-project ../Delta.Api)
            ;;
        2)
            echo "What is the table name for migration ?"
            read nameTable
            echo $(dotnet ef migrations add "Add$nameTable\Table" --startup-project ../Delta.Api)
            echo $(dotnet ef database update --startup-project ../Delta.api)
            ;;
        3)
            echo "Has seleccionado la opción 3"
            # Agrega aquí el código para la opción 3
            ;;
        4)
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


