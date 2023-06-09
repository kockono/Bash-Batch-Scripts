#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
    echo "Menú de opciones:"
    echo "1. Crear Componentes"
    echo "2. Crear Servicios"
    echo "3. Crear Guards"
    echo "4. Crear Views"
    echo "5. Crear Pipes"
    echo "6. Crear Directivas"
    echo "7. Salir"
    
}

# Función para procesar la opción seleccionada
procesar_opcion() {
    local opcion=$1
    case $opcion in
        1)
            echo "Nombre del componente ?"
            read $nameComponent
            echo $("ng g c components/$nameComponent")
            ;;
        2)
            echo "Nombre del servicio ?"
            read $nameService
            echo $("ng g s services/$nameService")
            ;;
        3)
            echo "Nombre del guard ?"
            read $nameGuard
            echo $("ng g guard guards/$nameGuard")
            ;;
        4)
            echo "Nombre de la vista (view) ?"
            read $nameView
            echo $("ng g c views/$nameView")
            ;;
        5)
            echo "Nombre del pipe ?"
            read $namePipe
            echo $("ng g pipe pipes/$namePipe")
            ;;
        6)
            echo "Nombre de la directiva ?"
            read $nameDirective
            echo $("ng g directive directives/$nameDirective")
            ;;
        7)
            echo "Saliendo del programa..."
            exit 0
            ;;
        *)
            echo "Opción inválida. Por favor, selecciona una opción válida."
            ;;
    esac
}

# Ciclo principal del programa
while true; do
    mostrar_menu
    read -p "Selecciona una opción: " opcion
    procesar_opcion $opcion
    echo
done
