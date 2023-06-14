@echo off

@REM Angular

:menu
echo Menu de opciones:
echo 1. Crear Componentes : ng g c components/nameComponent
echo 2. Crear Servicios   : ng g s services/nameService
echo 3. Crear Guards      : ng g guard guards/nameGuard
echo 4. Crear Views       : ng g c views/nameView
echo 5. Crear Pipes       : ng g p pipes/namePipe
echo 6. Crear Directivas  : ng g d directives/nameDirective
echo 7. Salir

set /p opcion=Selecciona una opcion: 

if "%opcion%"=="1" (
    echo Nombre del componente ?
    set /p nameComponent=
    ng g c components/%nameComponent%
) else if "%opcion%"=="2" (
    echo Nombre del servicio ?
    set /p nameService=
    ng g s services/%nameService%
) else if "%opcion%"=="3" (
    echo Nombre del guard ?
    set /p nameGuard=
    ng g guard guards/%nameGuard%
) else if "%opcion%"=="4" (
    echo Nombre de la vista (view) ?
    set /p nameView=
    ng g c views/%nameView%
) else if "%opcion%"=="5" (
    echo Nombre del pipe ?
    set /p namePipe=
    ng g pipe pipes/%namePipe%
) else if "%opcion%"=="6" (
    echo Nombre de la directiva ?
    set /p nameDirective=
    ng g directive directives/%nameDirective%
) else if "%opcion%"=="7" (
    echo Saliendo del programa...
    exit /b
) else (
    echo Opcion invalida. Por favor, selecciona una opcion valida.
)

goto menu
