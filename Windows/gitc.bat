@echo off

REM Función fast_commit
:fast_commit
set tipo_commit=%1
if "%tipo_commit%"=="f" (
    echo Descripcion del Feature:
    set /p commitName=
    git add . && git commit -m "feat: :sparkles: %commitName%" && git push
) else if "%tipo_commit%"=="fx" (
    echo Descripcion del Fix:
    set /p commitName=
    git add . && git commit -m "fix: :bug: %commitName%" && git push
) else if "%tipo_commit%"=="d" (
    echo Descripcion del Documentation:
    set /p commitName=
    git add . && git commit -m "docs: :memo: %commitName%" && git push
) else if "%tipo_commit%"=="t" (
    echo Descripcion del Test:
    set /p commitName=
    git add . && git commit -m "test: :test_tube: %commitName%" && git push
) else if "%tipo_commit%"=="d" (
    echo Descripcion del Remove dead code:
    set /p commitName=
    git add . && git commit -m "remove: :coffin: %commitName%" && git push
) else if "%tipo_commit%"=="h" (
    echo Descripcion del HotFix:
    set /p commitName=
    git add . && git commit -m "hotfix: :ambulance: %commitName%" && git push
) else if "%tipo_commit%"=="q" (
    echo Saliendo del programa...
    exit 0
) else (
    echo Opción inválida. Por favor, selecciona una opción válida.
)
goto :eof

REM Inicio del programa
:inicio
call :fast_commit %*
goto :eof
