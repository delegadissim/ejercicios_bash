#!/bin/bash
#Comprovem la quantitat d'arguments que li passem a l'script
if [[ $# -eq 1 ]]; then
	#Comprovem que el fitxer que li hem passat existeix
	if [[ -a $1 ]]; then	
		#Comprovem els permissos del fitxer
		if [[ -r $1 ]]; then
			#Comprovem que $1 apunta a un fitxer regular (no un directori o fitxer binari)
			if [[ -f $1 ]]; then
				cat $1
			else
				echo "Error, es un directori"
			fi
		else 
			echo "Error, el fitxer no es pot llegir"
		fi
	else
		echo "La ruta indicad no porta a cap puesto"
	fi
else
	echo -e "L'script s'utilitza aix√: \n\t$0 /ruta/a/l'arxiu/que/vols/llegir"
fi
