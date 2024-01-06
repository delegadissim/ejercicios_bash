#!/bin/bash
if [[ $# -eq 1 ]] && [[ $1 =~ ^[0-9]+$ ]]; then
	prim=0
	for (( i=2; i<$1; i++))
	do
		if [[ $1%2 -eq 0 ]]; then 
			((cont++))
			break
		fi	
	done
	if [[ $cont -eq 0 ]]; then
		echo "El nombre ES prim"
	else
		echo "El nombre NO es prim"
	fi
else 
	echo -e "La forma d'utilitzar l'script \n\t-$0 X --> on X es un nombre"
fi
