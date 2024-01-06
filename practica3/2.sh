#!/bin/bash

archivos_peligrosos=$(find / -type f -perm -007 2>/dev/null)

if [ -n "$archivos_peligrosos" ]; then
    echo "$archivos_peligrosos" > archivos_peligrosos.txt
    echo "Se encontraron archivos peligrosos."
else
    echo "No se encontraron archivos peligrosos con permisos --- --- rwx."
fi

