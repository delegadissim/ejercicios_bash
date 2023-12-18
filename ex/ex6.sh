#!/bin/bash
if [[ $# -eq 1 ]] && [[ $1 =~ ^[0-9]+$ ]]; then
	for (( i=1; i<=10; i++ ))
	do	
		echo -e "$1 X $i = $(($i*$1))"
	done
else 
	echo -e "La forma d'utilitzar l'script \n\t-$0 X --> on X es la taula de multiplicar que vols vore"
fi
