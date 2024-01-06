#!/bin/bash
if [ ! -e "$1" ]; then
	echo "La ruta no existe."
	exit
elif [ ! -d $1 ]; then
	echo "La ruta no es un directori"
	exit
fi


echo "El directori $1 té:"
total=$(ls -la $1 | awk '{print substr($1, 1, 1)}' | tail -n +4 | wc -l)
arxius=$(ls -la $1 | awk '{print substr($1, 1, 1)}' | tail -n +4 | grep - | wc -l)
directoris=$(ls -la $1 | awk '{print substr($1, 1, 1)}' | tail -n +4 | grep d | wc -l)
echo "total = $total"
echo "arxius = $arxius"
echo "directoris = $directoris"
