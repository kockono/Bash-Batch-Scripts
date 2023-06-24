@echo off

REM Función fast_commit
:fast_commit
set tipo_commit=%1
echo git pull
if "%tipo_commit%"=="f" (
    echo Feature:
    git add . && git commit -m "feat: :sparkles: %2 %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="fx" (
    echo Fix:
    git add . && git commit -m "fix: :bug: %2 %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="d" (
    echo Documentation:
    git add . && git commit -m "docs: :memo: %2 %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="t" (
    echo Test:
    git add . && git commit -m "test: :test_tube: %2 %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="d" (
    echo Remove dead code:
    git add . && git commit -m "remove: :coffin: %2 %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="h" (
    echo HotFix:
    git add . && git commit -m "hotfix: :ambulance: %2 %3 %4 %5 %6 %7 %8 %9" && git push
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
