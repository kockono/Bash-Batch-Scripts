@echo off
@REM NetCore
:menu
echo Menú de opciones:
echo 1. Table Migration                   : dotnet ef migrations add "AddnameTableTable"
echo 2. and UpdateDatabase Migration      : dotnet ef migrations add "AddnameTableTable" ^&^& dotnet ef database update
echo 3. For Add Column On Table Migration : dotnet ef migrations add "AddColumnnameColumnToTabletableName"
echo q. Salir 

set /p opcion=Selecciona una opcion: 

if "%opcion%"=="1" (
    echo What is the table name for migration ?
    set /p nameTable=
    dotnet ef migrations add "Add%nameTable%Table" --startup-project ../Delta.Api
) else if "%opcion%"=="2" (
    echo What is the table name for migration ?
    set /p nameTable=
    dotnet ef migrations add "Add%nameTable%Table" --startup-project ../Delta.Api
    dotnet ef database update --startup-project ../Delta.api
) else if "%opcion%"=="3" (
    echo What is the column name for migration ?
    set /p nameColumn=
    echo What is the table name for migration ?
    set /p tableName=
    dotnet ef migrations add "AddColumn%nameColumn%ToTable%tableName%" --startup-project ../Delta.Api
) else if "%opcion%"=="q" (
    echo Saliendo del programa...
    exit /b
) else (
    echo Opcion invalida. Por favor, selecciona una opcion valida.
)

goto menu
