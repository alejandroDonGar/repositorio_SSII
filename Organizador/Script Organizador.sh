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
contador=0
for archivos in Organizador/; 
do
    if [[ -e "$archivos" ]] && [[ ! -s "$archivos" ]]; then
        mv "$archivos" vacios/
        ((contador++))
    fi
done
echo
echo "Se han movido los archivos ".java" a la carpeta "ejecutables" correctamente."
echo
for archivos in *.{txt,doc,pdf,odt}; 
do
    if [[ -e "$archivos" ]]; then
        mv "$archivos" documentos/
        ((contador++))
    fi
done
echo
echo "Se han movido los documentos a la carpeta "documentos" correctamente."
echo
for archivos in *.{jpg,gif,bmp,png}; 
do
    if [[ -e "$archivos" ]]; then
        mv "$archivos" imagenes/
        ((contador++))
    fi
done
echo
echo "Se han movido los imagenes a la carpeta "imagenes" correctamente."
echo
for archivos in *.java; 
do
    if [[ -e "$archivos" ]]; then
        mv "$archivos" ejecutables/
        ((contador++))
    fi
done
echo
echo "Se han movido los archivos vacios a la carpeta "vacios" correctamente."
echo
echo
echo "Proceso finalizado"
echo