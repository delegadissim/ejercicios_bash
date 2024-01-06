#!/bin/bash

info=$(uptime; who)

hora=$(date +"%T")

datos="$hora $info"

historial="/var/log/historial.txt"

echo "$datos" >> "$historial"
*/10 * * * * /ruta/del/script.sh

