#!/bin/bash
echo "Introdueix el nombre que vols saber si es parell o imparell"
read nom
if [[ $nom%2 -eq 0 ]]; then
	echo "Es parell"
else
	echo "Es senar"
fi
