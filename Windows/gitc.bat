@echo off

@REM Valida que el argumento no este vacio
if not "%1"=="" (
    git add . && git commit -m "%1" && git push
    exit /b
) else (
    :menu
    echo Menu de opciones:
    echo a. Crear Commit de todos los cambios y push                : git add . ^&^& git commit -m "CommitName" ^&^& git push
    echo 1. Reiniciar numero de commits                             : git reset --hard Head~$
    echo 2. Eliminar archivos de git cache [.vscode, bin, obj]      : git rm --cached . -rf
    echo 3. Encontrar un git en especifico case sensitive           : git log --all --oneline --grep='gitName'
    echo 4. Ver historial de log de un archivo en especifico        : git log -p --follow -- "fileName"
    echo 5. Limpiar ramas locales                                   : git remote prune origin --dry-run
    echo 6. Retornar a un commit especifico sin crear rama temporal : git pull --allow-unrelated-histories --no-ff
    echo q. Salir
)

@REM Opcion para leer escritura de teclado
set /p opcion=Selecciona una opcion:

if "%opcion%"=="a" (
    set /p commitName=Nombre del commit: 
    git add . && git commit -m "%commitName%" && git push
) else if "%opcion%"=="1" (
    set /p numeroCommits=¿Numero de commits a reiniciar?
    git reset --hard HEAD~%numeroCommits%
) else if "%opcion%"=="2" (
    git rm --cached . -rf
) else if "%opcion%"=="3" (
    set /p gitName=Nombre del commit a buscar case sensitive
    git log --all --oneline --grep='%gitName%'
) else if "%opcion%"=="4" (
    set /p fileName=Introduzca el nombre del archivo para ver su historial
    git log -p --follow -- "%fileName%"
) else if "%opcion%"=="5" (
    echo Ramas limpiadas con exito
    git remote prune origin --dry-run
) else if "%opcion%"=="6" (
    set /p gitName=Nombre del commit a retornar
    git pull --allow-unrelated-histories --no-ff
) else if "%opcion%"=="7" (
    set /p commitId=Introduzca el commit ID al que desea regresar la rama
    git reset --hard %commitId% && git clean -f
) else if /i "%opcion%"=="q" (
    echo Saliendo del programa...
    exit /b
) else (
    echo Opcion invalida. Por favor, selecciona una opcion valida.
)

goto menu
