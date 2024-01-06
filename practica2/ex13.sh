#!/bin/bash
sum=0
cont=23
while [[ $cont -ne 0 ]]; do

	echo "Introdueix el nombre que vols sumar"
	read  cont
	(( sum+=cont ))
	echo "La suma es: $sum"
done
echo -e "\n\n\n"
echo "La suma total ha sigut de: $sum"

