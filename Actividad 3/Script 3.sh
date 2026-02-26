#!/usr/bin/bash
############################################
#Script Name    :Script 3.sh
#Description    :Script que te dice cual es tu IMC en base a tu "altura" y "peso"
#Author         :AlejandroDoGa
############################################
set -euo pipefail

echo "------------------------------------------------"
echo "Vamos a calcular tu Índice de Masa Corporal - IMC"
echo
echo "Ahora respondeme a unas preguntas sencillas."
read -p "  1) ¿Cual es tu altura en centimetros?: " ALTURA_CM
read -p "  2) ¿Cual es tu peso actual en kilogramos?: " PESO_KL

ALTURA_CM = $(echo"scale=2;$ALTURA_CM/100" | bc)
IMC = $(echo"scale=2;$PESO/($ALTURAL_CM*$ALTURA_CM)" | bc)

echo "------------------------------------------------"
echo "Vale, dame un segundo. Calculando tu IMC personal..."
sleep 2

echo "Vale, con una altura de $ALTURA cm y un peso de $PESO kg,"
echo "tu IMC seria de: $IMC."

echo "------------------------------------------------"
echo "Ahora ¿En que categoría quedarías ensarillado? Vamos a ver."
echo
echo "Calculando..."
sleep 3

if (( $(echo"IMC<18.5" | bc -l) )); then
    ESTADO = "Bajo peso"
elif (( $(echo"IMC<25" | bc -l) )); then
    ESTADO = "Saludable"
elif (( $(echo"IMC<30" | bc -l) )); then
    ESTADO = "Sobrepeso"
else
    ESTADO = "Obesidad"
fi

echo "Proceso terminado."
echo "Segun nuestros calculos, tu estado es de: $ESTADO."
echo "------------------------------------------------"
