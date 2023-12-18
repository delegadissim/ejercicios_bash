#!/bin/bash
echo "Introdueix el primer nombre"
read nom1
echo "Introdueix el segon nombre"
read  nom2
echo -e "\n\nEl nombre mes gran és:"
if [ $nom1 -gt $nom2 ]; then
	echo $nom1
else
	echo $nom2
fi
