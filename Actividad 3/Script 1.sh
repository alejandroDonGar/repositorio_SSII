#!/usr/bin/bash
############################################
#Script Name    :Script 1.sh
#Description    :Script que calcula los segundos en una fecha "DIA, HORAS y SEGUNDOS"
#Author         :AlejandroDoGa
############################################
set -euo pipefail
echo "------------------------------------------"
echo "Vamos a calcular el número de segundos que hay en una fecha compuesta con forma -> DIA, HORAS y MINUTOS."
echo "Dime los números que escojas en ese orden: $1 $2 $3"
echo "------------------------------------------"
dia = $1
horas = $2
segundos = $3
