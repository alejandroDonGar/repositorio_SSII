#!/usr/bin/bash
############################################
#Script Name    :Script 7.sh
#Description    :Script que crea un triángulo con el caracter "#" 
#Author         :AlejandroDoGa
############################################
set -euo pipefail
echo
echo "---------------------------------------"
echo "Vamos a calcular al area de un triangulo."
echo
echo "Empezando..."
sleep 1
echo "Cargando programa triangulador.."
sleep 2
echo
read -p "Vamos a comenzar. Dime cual va a ser la base/altura de tu triángulo en cm: " NUMERO
echo
sleep 1
echo "Calculando area..."
sleep 2
AREA=$(( ($NUMERO*$NUMERO)/2 ))
echo
echo "¡¡¡CÁLCULO TERMINADO!!!"
sleep 1 
echo "Si seguimos las medidas de $NUMERO cm de base/altura, tu triángulo tendría un area de: $AREA cm"
echo
echo "---------------------------------------"
sleep 3
echo
echo "Ahora vamos a dibujarlo con el caracter "#"."
sleep 2
echo
echo "Dibujando..."
sleep 2
echo "Dibujando más rápido..."
sleep 2
echo "Ya casi está..."
sleep 2
echo 
echo "¡¡¡TERMINADO!!!" 
sleep 1
echo
for (( i=1; i<=AREA; i++ ))
do 
    for(( j=1; j<=i; j++ ))
    do
    echo -n "#"
    done
echo
done
echo
echo "Aquí está el resultado =)"
echo
echo "---------------------------------------"
echo