#!/bin/bash
if [[ $# -eq 1 ]]; then
	if [[ -a $1 ]]; then
		if [[ -d $1 ]]; then
			echo "ES UN DIRECTORI"
		else
			echo "NO ES UN DIRECTORI "
		fi
	else
		echo "NO EXISTEIX LA RUTA INDICADA"
	fi
else
	echo -e "L'script s'utilitza aix√: \n\t$0 /ruta/a/l'arxiu/que/vols/saber/si/existeix"
fi
