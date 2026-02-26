#!/usr/bin/bash
############################################
#Script Name    :Script 1.sh
#Description    :Script que calcula los segundos en una fecha "DIA, HORAS y SEGUNDOS"
#Author         :AlejandroDoGa
############################################
set -euo pipefail

echo "------------------------------------------------------------"
echo "Dime una fecha con formato DÍA, HORA Y SEGUNDOS"
echo "y te diré los segundos totales."
echo "------------------------------------------------------------"

read -p "Introduce los días: " DIAS
read -p "Introduce las horas: " HORAS
read -p "Introduce los segundos: " SEGUNDOS_EXTRAS

SEG_DIAS=$((DIAS * 86400))
SEG_HORAS=$((HORAS * 3600))

TOTAL=$((SEG_DIAS + SEG_HORAS + SEGUNDOS_EXTRAS))

echo "------------------------------------------------------------"
echo "El resultado de calcular $DIAS días, $HORAS horas y $SEGUNDOS_EXTRAS segundos es:"
echo "¡Un total de $TOTAL segundos!"
echo "------------------------------------------------------------"
