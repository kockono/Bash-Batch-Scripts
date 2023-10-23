@echo off

REM Función fast_commit
:fast_commit
REM git add .
set tipo_commit=%1
if "%tipo_commit%"=="f" (
    echo Feature:
    git commit -m ":sparkles: feat(%2): %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="fx" (
    echo Fix:
    git commit -m ":bug: fix(%2): %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="d" (
    echo Documentation:
    git commit -m ":memo: docs(%2):  %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="t" (
    echo Test:
    git commit -m ":test_tube: test(%2): %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="r" (
    echo Remove dead code:
    git commit -m ":coffin: remove(%2): %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="h" (
    echo HotFix:
    git commit -m ":ambulance: hotfix(%2): %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="h" (
    echo Style:
    git commit -m "💄 style(%2): %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="w" (
    echo Working:
    git commit -m ":construction: working(%2): %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="p" (
    echo Dependencies:
    git commit -m ":package: chore(%2): %3 %4 %5 %6 %7 %8 %9" && git push
) else if "%tipo_commit%"=="q" (
    echo Saliendo del programa...
    exit 0
) else (
    echo Opción inválida. Por favor, selecciona una opción válida.
)
goto :eof

REM Inicio del programa
:inicio
REM Sirve para pasar todos los agumentos con espacios %*
call :fast_commit %*
goto :eof
