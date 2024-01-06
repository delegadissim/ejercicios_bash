#!/bin/bash
if [[ $# -eq 2 ]]; then
	if [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]]; then
		echo $(($1 + $2))
	fi
else
	echo -e "L'script s'utilitza aixÃ\n\t$0 X X --> on X son els nombres que vols sumar"
fi
