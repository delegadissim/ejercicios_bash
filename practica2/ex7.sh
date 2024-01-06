#!/bin/bash
if [[ $# -eq 1 ]] && [[ $1 =~ ^[0-9]+$ ]]; then
	for (( i=1; i<=$1; i++ ))
	do	
		for (( j=1; j<=$i; j++ ))
		do
			echo -n "$j "
		done
		echo
	done
else 
	echo -e "La forma d'utilitzar l'script \n\t-$0 X --> on X es la quantitat de linies que vols vore"
fi
