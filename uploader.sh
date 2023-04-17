#!/bin/bash

read -p "¿Está seguro que desea continuar? (y/n): " confirmation

if [[ "$confirmation" == [yY] || "$confirmation" == [yY][eE][sS] ]]; then
    # Coloca aquí tus comandos que deseas automatizar
    archivo="carga_lv_bitel.ctl"
    ruta="/home/jaburto/Documents/DATA - Con Andrea/LVL"
    SQLLDR CRES_JABURTO@DBRENTESEG control:archivo.ctl
    read -p "Presione Enter para salir"
    if find /home/jaburto/Documents/DATA - Con Andrea/LVL -name "carga_lv_bitel.ctl" -print -quit | grep -q "carga_lv_bitel.ctl"; then
    
    echo "El archivo $archivo fue encontrado en la ruta $ruta"

    read -p "Presione Enter para salir"
    else
    echo "El archivo $archivo no fue encontrado en la ruta $ruta"
    fi
else
    echo "La ejecución de los comandos ha sido cancelada"
fi
read -p "Presione Enter para salir"