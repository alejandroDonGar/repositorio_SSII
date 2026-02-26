#!/usr/bin/bash
############################################
#Script Name    :Script 2.sh
#Description    :Script que te ayuda a hacer commits a tus repositorios de Git
#Author         :AlejandroDoGa
############################################
set -euo pipefail

echo "------------------------------------------------"
echo "Buenas, voy a ayudarte a un commit a tu repo en Git"

read -p "Cual quieres que sea el mensaje del commit? " MENSAJE

echo "Dame un segundo, estoy añadiendo los archivos..."
git add .

echo "Ahora voy a realizar el commit con tu mensaje..."
git commit -m "$MENSAJE"

echo "Haciendo el push origin main..."
git push
echo "------------------------------------------------"
echo
echo "Muy bien, se ha realizado el commit exitosamente."
