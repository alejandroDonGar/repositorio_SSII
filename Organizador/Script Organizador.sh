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
if [[ -f $archivos "*.txt","*.doc","*.pdf"]]; then
    echo "Se han movido los documentos a la carpeta "Documentos" correctamente."
    mv documentos/
fi
done
echo
echo "Proceso finalizado"