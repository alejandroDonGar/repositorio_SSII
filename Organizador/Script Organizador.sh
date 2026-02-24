#!/usr/bin/bash

clear
echo
echo "Ahora limpiaremos un poco la carpeta."
echo
echo "Primero, vamos a crear carpetas para cada tipo de archivo."
echo
mkdir imagenes && echo "Se ha creado la carpeta imagenes."
mkdir ejecutables && echo "Se ha creado la carpeta ejecutables."
mkdir documentos && echo "Se ha creado la carpeta documentos."
mkdir vacios && echo "Se ha creado la carpeta vacios."
echo
for archivos in "Organizador"/*; 
do
    if [[ -f $archivos -n "*.txt", "*.doc", "*.pdf" ]]; then
        mv documentos/
        echo "Se han movido los documentos a la carpeta "documentos" correctamente."
    fi
    if [[ -f $archivos -n "*.jpg", "*.gif", "*.bpm" ]]; then
        mv imagenes/
        echo "Se han movido los imagenes a la carpeta "imagenes" correctamente."
    fi
    if [[ -f $archivos -n "*.jpg", "*.gif", "*.bpm" ]]; then
        mv ejecutables/
        echo "Se han movido los archivos ".java" a la carpeta "ejecutables" correctamente."
    fi
    if [[ -f $archivos -s 0 ]]; then
        mv vacios/
        echo "Se han movido los archivos vacios a la carpeta "vacios" correctamente."
    fi
done
echo
echo "Proceso finalizado"
echo