#!/bin/bash

#FUNCIONS
function menu(){
	clear
	echo -e "\n DECIDEIX QUE FER:\n
	1 - Sumar
	2 - Restar
	3 - Dividir
	4 - Multiplicar
	0 - Salir\n"
	read opt	
	check_number $opt
}
function check_number(){
	if [[ ! $1 =~ [0-9]+ ]]; then	
		echo "Has introduït un valor incorrecte, surtint del programa..."
		exit 1
	fi

}
function sumar(){
	echo -e "\n La suma del dos nombres es: $(($1+$2)) \n"
	netejar
}
function restar(){
	echo -e "\n La resta del dos nombres es: $(($1-$2)) \n"
	netejar
}
function multiplicar(){
	echo -e "\n La multiplicació del dos nombres es: $(($1*$2)) \n"
	netejar
}
function dividir(){
	echo -e "\n La divisió del dos nombres es: $(($1/$2)) \n"
	netejar
}
function ask_numbers(){
	clear
	echo -e "\n Introdueix el primer nombre\n"
	read num1
	check_number $num1
	clear
	echo -e "\n Introdueix el segon nombre\n"
	read num2
	check_number $num2
	clear
}


function netejar(){
	echo 
	read -p "Prem INTRO per continuar" 
	clear

}

#VARIABLES
declare -g opt
declare -g num1
declare -g num2

##########
###MAIN###
##########

menu


while [[ $opt -ne 0 ]]
do
	case $opt in
		1)
			ask_numbers
			sumar $num1 $num2;;
		2)
			ask_numbers
			restar $num1 $num2;;
		4)
			ask_numbers
			multiplicar $num1 $num2;;
		3)
			ask_numbers
			dividir $num1 $num2;;
		*)
			echo -e "\nHas introduït una operació incorrecta\n"
			netejar
			;;
	esac
	menu
done
clear
echo -e "\n\n\t[!]Sortint....\n\n"
