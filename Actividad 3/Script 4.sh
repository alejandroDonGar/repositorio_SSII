#!/usr/bin/bash
############################################
#Script Name    :Script 4.sh
#Description    :Script que te ayuda a detectar si una contraseña es correcta o no
#Author         :AlejandroDoGa
############################################
set -euo pipefail

echo "------------------------------------------------"
echo "Vamos a ver si la contraseña que introduces es correcta."
echo "Empezando..."
sleep 1
while true;
do
read -p "Primero, introduce tu contraseña: " CONTRASENIA1
echo "..."
sleep 1

read -p "Ahora, confirma tu contraseña: " CONTRASENIA2
echo "..."
sleep 1

if [[ "$CONTRASENIA1"=="$CONTRASENIA2" ]]; then
    echo "------------------------------------------------"
    echo "¡Muy bien! Las contraseñas coinciden."
    echo "Ha terminado el proceso."
    echo "------------------------------------------------"
    break
else
    echo "------------------------------------------------"
    echo "ERROR"
    echo "Las contraseñas no coinciden."
    echo "------------------------------------------------"
    echo
    echo "Reintentando..."
    sleep 2
    fi
done
