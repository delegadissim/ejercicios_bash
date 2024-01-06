#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Error: Debes proporcionar exactamente dos parámetros."
    exit 1
fi
archivo_origen="$1"
archivo_destino="$2"
if [ ! -f "$archivo_origen" ]; then
    echo "Error: El primer parámetro debe ser un archivo ordinario existente."
    exit 1
fi

if [ -e "$archivo_destino" ]; then
    echo "Error: Ya existe un identificador (archivo, directorio, etc.) con el nombre indicado en el segundo parámetro."
    exit 1
fi

cp "$archivo_origen" "$archivo_destino"

echo "El archivo se ha copiado exitosamente de $archivo_origen a $archivo_destino."

