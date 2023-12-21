#!/bin/bash

#FUNCIONS
function demanar_nombre(){
	echo "Introdueix el nombre que vols endevinar"
	read try
}
function check_number(){
	clear
	if [[ $1 -gt $2 ]]; then	
		echo -e "\n\t MAJOR que $2"
	elif [[ $1 -lt $2 ]]; then
		echo -e "\n\t MENOR que $2"
	fi

}


#VARIABLES

num=$(($RANDOM%101))
declare -ig try

##########
###MAIN###
##########

while [[ $num -ne $try ]]
do
	demanar_nombre
	check_number $num $try
done
clear
echo -e "\n\n\n\t HAS GUANYAT\n\n\n"
