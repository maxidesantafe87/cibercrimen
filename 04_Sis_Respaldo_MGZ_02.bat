@echo off

REM Mensaje inicial
echo.
echo ==============================================================
echo SISTEMA DE EMERGENCIA DE RECOLECCION DE PUERTOS - MGZ - V. 2.2
echo ------------------- Dto. Cibercrimen - PDI -------------------
echo ==============================================================

echo.


REM Crear la carpeta MGZ_02 si no existe
mkdir MGZ_02

REM Muestra todas las conexiones y puertos de escucha.
echo === Mostrando todas las conexiones y puertos de escucha ===
netstat -a > MGZ_02\Mostrando_todas_las_conexiones_y_puertos_de_escucha.csv

REM Muestra direcciones y puertos en formato numerico en lugar de resolucion de nombres.
echo === Mostrando direcciones y puertos en formato numerico ===
netstat -n > MGZ_02\Mostrando_direcciones_y_puertos_en_formato_numerico.csv

REM Muestra el PID (Identificador de Proceso) del proceso que abrio cada conexion.
echo === Mostrando el PID del proceso asociado a cada conexion ===
netstat -o > MGZ_02\Mostrando_el_PID_del_proceso_asociado_a_cada_conexion.csv

REM Muestra conexiones TCP
echo === Mostrando conexiones TCP ===
netstat -t > MGZ_02\Mostrando_conexiones_TCP.csv

REM Muestra conexiones UDP
echo === Mostrando conexiones UDP ===
netstat -u > MGZ_02\Mostrando_conexiones_UDP.csv

REM Muestra la tabla de enrutamiento del sistema.
echo === Mostrando la tabla de enrutamiento ===
netstat -r > MGZ_02\Mostrando_la_tabla_de_enrutamiento.csv

REM Muestra estadisticas de protocolo.
echo === Mostrando estadisticas de protocolo ===
netstat -s > MGZ_02\Mostrando_estadisticas_de_protocolo.csv

REM Muestra estadísticas de Ethernet.
echo === Mostrando estadísticas de Ethernet ===
netstat -e > MGZ_02\Mostrando_estadisticas_de_Ethernet.csv

REM Muestra nombres de dominio completos (FQDN) para direcciones externas.
echo === Mostrando nombres de dominio completos para direcciones externas ===
netstat -f > MGZ_02\Mostrando_nombres_de_dominio_completos.csv

REM Muestra el tiempo gastado por una conexión TCP en su estado actual.
echo === Mostrando tiempo gastado por conexiones TCP ===
netstat -i > MGZ_02\Mostrando_tiempo_gastado_por_conexiones_TCP.csv

REM Muestra el id. del proceso propietario asociado con cada conexión.
echo === Mostrando el id. del proceso propietario asociado con cada conexión ===
netstat -o > MGZ_02\Mostrando_id_del_proceso_asociado_con_cada_conexion.csv

REM Muestra conexiones para el protocolo especificado.
echo === Mostrando conexiones para el protocolo especificado ===
netstat -p TCP > MGZ_02\Mostrando_conexiones_para_protocolo_especificado.csv

REM Muestra todas las conexiones, puertos de escucha y puertos TCP de enlace.
echo === Mostrando todas las conexiones, puertos de escucha y puertos TCP de enlace ===
netstat -q > MGZ_02\Mostrando_todas_las_conexiones_puertos_de_escucha_TCP_de_enlace.csv

REM Muestra las estadísticas por protocolo.
echo === Mostrando estadísticas por protocolo ===
netstat -s > MGZ_02\Mostrando_estadisticas_por_protocolo.csv

REM Muestra el estado de descarga de la conexión actual.
echo === Mostrando estado de descarga de la conexión actual ===
netstat -t > MGZ_02\Mostrando_estado_de_descarga_de_la_conexion_actual.csv

REM Muestra conexiones, agentes de escucha y extremos compartidos de NetworkDirect.
echo === Mostrando conexiones, agentes de escucha y extremos compartidos de NetworkDirect ===
netstat -x > MGZ_02\Mostrando_conexiones_agentes_de_escucha_de_NetworkDirect.csv

REM Muestra la plantilla de conexión TCP para todas las conexiones.
echo === Mostrando plantilla de conexión TCP para todas las conexiones ===
netstat -y > MGZ_02\Mostrando_plantilla_de_conexion_TCP_para_todas_las_conexiones.csv



REM Mensaje final
echo.

echo ==============================================================
echo SISTEMA DE EMERGENCIA DE RECOLECCION DE PUERTOS - MGZ - V. 2.2
echo ==============================================================

echo.

REM Mostrar la ubicacion del archivo generado
echo.
echo Se han creado archivos CSV individuales en %cd%
echo.



REM Mensaje final
echo.

echo ==============================================================
echo SISTEMA FINALIZADO - 2024 - MGZ - Dto. Cibercrimen - PDI
echo ==============================================================

REM Esperar para que el usuario pueda ver el mensaje
pause





REM ----------------------------------------------------------
REM ----------------------------------------------------------
REM ----------------------------------------------------------

REM Al ejecutarlo crea 10 archivos de excel.
REM 1°
REM Mostrando_direcciones_y_puertos_en_formato_numerico.csv 
rem CONEXIONES ACTIVAS //   Proto  Direccion local        Direccion remota       Estado

REM 2°
REM Mostrando_todas_las_conexiones_y_puertos_de_escucha.csv
rem 

REM 3°
REM Mostrando_el_PID_del_proceso_asociado_a_cada_conexion.csv

REM 4°
REM Mostrando_conexiones_TCP.csv

REM 5°
REM Mostrando_conexiones_UDP.csv

REM 6°
REM Mostrando_estadisticas_de_protocolo.csv

REM 7°
REM Mostrando_estadisticas_de_protocolo.csv

REM 8°
REM Mostrando_informacion_extendida.csv

REM 9°
REM Mostrando_la_tabla_de_enrutamiento.csv

REM 10°
REM Mostrando_solo_puertos_de_escucha.csv

REM 11°
REM Mostrando_el_nombre_del_archivo_ejecutable_involucrado.csv