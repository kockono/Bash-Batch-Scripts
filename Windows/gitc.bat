@echo off

REM Función fast_commit
:fast_commit
git add .
set tipo_commit=%1
if "%tipo_commit%"=="f" (
    echo Feature:
    git commit -m "feat(%2): :sparkles: %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="fx" (
    echo Fix:
    git commit -m "fix(%2): :bug: %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="d" (
    echo Documentation:
    git commit -m "docs(%2): :memo: %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="t" (
    echo Test:
    git commit -m "test(%2): :test_tube: %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="r" (
    echo Remove dead code:
    git commit -m "remove(%2): :coffin: %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="h" (
    echo HotFix:
    git commit -m "hotfix(%2): :ambulance: %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="h" (
    echo HotFix:
    git commit -m "style(%2): 💄 %3 %4 %5 %6 %7 %8 %9" && git push
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
