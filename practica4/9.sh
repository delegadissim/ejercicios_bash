#!/bin/bash

fecha=$(date +"%Y%m%d_%H%M%S")

archivo_destino="/root/copia_etc_$fecha.tgz"

directorio_fuente="/etc"

tar -czf "$archivo_destino" -C "/" "$directorio_fuente"


