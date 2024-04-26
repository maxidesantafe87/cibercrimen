@echo off


REM Mensaje inicial
echo.
echo ==============================================================
echo SISTEMA DE EMERGENCIA DE RECOLECCION DE PUERTOS - MGZ - V. 2.2
echo ------------------- Dto. Cibercrimen - PDI -------------------
echo ==============================================================

echo.

REM Carpeta donde se guardarán los archivos
set folder=MGZ_03

REM Nombre base del archivo
set base_name=MGZ_03

REM Contador para el número del archivo
set counter=1

:check_file_existence
REM Verificar si el archivo ya existe
if exist "%folder%\%base_name%.txt" (
    set /a counter+=1
    set base_name=MGZ_03
    set base_name=%base_name%_%counter%
    goto :check_file_existence
)

REM Nombre del archivo completo
set filename=%base_name%.txt

REM Crear la carpeta si no existe
if not exist "%folder%" mkdir "%folder%"

REM Nombre del archivo que ejecuta este script
echo Nombre del archivo que ejecuta este script: %~nx0 > "%folder%\%filename%"
echo. >> "%folder%\%filename%"

REM Fecha y hora de inicio de la recopilación
echo Fecha y hora de inicio de la recopilacion: %date% %time% >> "%folder%\%filename%"
echo. >> "%folder%\%filename%"

REM Encabezado para los datos de las conexiones
echo IP Local    IP Remota    Puerto Local    Puerto Remoto    Estado    PID    Proceso    Subproceso    Hora    Fecha >> "%folder%\%filename%"
echo --------------------------------------------------------------------------------------------------------------- >> "%folder%\%filename%"

REM Establecer el tiempo de inicio
setlocal enabledelayedexpansion
for /f "tokens=1-3 delims=:" %%a in ("%time%") do (
    set /a start_time=%%a*3600 + %%b*60 + %%c
)

REM Bucle para recopilar información durante al menos 30 segundos
:loop
REM Obtener el tiempo actual
for /f "tokens=1-3 delims=:" %%a in ("%time%") do (
    set /a current_time=%%a*3600 + %%b*60 + %%c
)
REM Calcular el tiempo transcurrido
set /a elapsed_time=current_time - start_time

REM Verificar si han pasado al menos 30 segundos
if !elapsed_time! geq 30 (
    goto :end
)

REM Recopilar información de las conexiones y mostrarla en pantalla y guardarla en el archivo
for /f "tokens=1-5" %%a in ('netstat -n -o ^| findstr "ESTABLISHED CLOSE_WAIT"') do (
    for /f "tokens=1 delims=," %%f in ('tasklist /fi "PID eq %%e" /nh /fo csv') do (
        echo %%a   %%b   %%c   %%d   %%e   %%f   %%g   %%h   !TIME!   !DATE!
        echo %%a   %%b   %%c   %%d   %%e   %%f   %%g   %%h   !TIME!   !DATE! >> "%folder%\%filename%"
    )
)

REM Esperar un segundo antes de continuar (revisar las columnas)
timeout /t 1 > nul
goto :loop

:end
echo.
REM Mensaje inicial
echo.
echo ==============================================================
echo SISTEMA DE EMERGENCIA DE RECOLECCION DE PUERTOS - MGZ - V. 2.2
echo ------------------- Dto. Cibercrimen - PDI -------------------
echo ==============================================================

echo.
pause
