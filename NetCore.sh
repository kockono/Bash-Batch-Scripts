# Windows
#! /usr/bin/bash
# Linux
#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
    echo "Menú de opciones:"
    echo "1. Make Migration Table"
    echo "2. Make Migration and UpdateDatabase"
    echo "3. Make Migration For Add Column On Table"
    echo "q. Salir"
}

# Función para procesar la opción seleccionada
procesar_opcion() {
    local opcion=$1
    case $opcion in
        1)
            echo "What is the table name for migration ?"
            read nameTable
            echo $(dotnet ef migrations add "Add${nameTable}Table" --startup-project ../Delta.Api)
            ;;
        2)
            echo "What is the table name for migration ?"
            read nameTable
            echo $(dotnet ef migrations add "Add${nameTable}Table" --startup-project ../Delta.Api)
            echo $(dotnet ef database update --startup-project ../Delta.api)
            ;;
        3)
            echo "What is the column name for migration ?"
            read nameColumn
            echo "What is the table name for migration ?"
            read tableName
            echo $(dotnet ef migrations add "AddColumn${nameColumn}ToTable${tableName}" --startup-project ../Delta.Api)
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


