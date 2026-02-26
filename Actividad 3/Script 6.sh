#!/usr/bin/bash
############################################
#Script Name    :Script 6.sh
#Description    :Script que crea un rectangulo con caracteres ASCII
#Author         :AlejandroDoGa
############################################
set -euo pipefail

echo
echo "---------------------------------------"
echo "Vamos a calcular al area de un rectangulo."
echo
echo "Empezando..."
sleep 1
echo "Cargando programa rectangulador.."
sleep 2
echo
read -p "Vamos a comenzar. Dime cual va a ser la base de tu rectangulo en cm: " BASE
read -p "Ahora dime cual va a ser la altura de tu rectangulo en cm: " ALTURA
echo
sleep 1
echo "Calculando area..."
sleep 2
AREA=$(($BASE*$ALTURA))
echo
echo "¡¡¡CÁLCULO TERMINADO!!!"
sleep 1 
echo "Si seguimos las medidas de $BASE cm de base y $ALTURA cm de altura, tu rectángulo tendría un area de: $AREA cm"
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
for (( i=1; i<ALTURA; i++ ))
do 
    for(( j=1; j<BASE; j++ ))
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