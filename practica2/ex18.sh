#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error: Debes proporcionar un nombre de usuario como parámetro."
    exit 1
fi

usuario="$1"

if id "$usuario" &>/dev/null; then
    echo "El usuario $usuario está dado de alta en el sistema."

    if who | grep -wq "$usuario"; then
        echo "El usuario $usuario ha iniciado sesión."
    else
        echo "El usuario $usuario no ha iniciado sesión."
    fi
else
    echo "El usuario $usuario no está dado de alta en el sistema."
fi

