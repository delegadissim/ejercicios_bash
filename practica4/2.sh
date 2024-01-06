#!/bin/bash

function mostrar_opciones() {
    echo "Uso: $0 [ahora | minutos]"
    echo "Opciones:"
    echo "  ahora      : Reinicia el equipo inmediatamente."
    echo "  minutos N  : Reinicia el equipo en N minutos."
}

if [ "$#" -eq 0 ]; then
    mostrar_opciones
    exit 1
fi

if [ "$1" == "ahora" ]; then
    echo "Reiniciando el sistema ahora..."
    sudo reboot
elif [ "$1" == "minutos" ] && [ "$#" -eq 2 ] && [[ "$2" =~ ^[0-9]+$ ]]; then
    minutos="$2"
    echo "El sistema se reiniciará en $minutos minutos. Guarda tu trabajo."
    sleep "$((minutos * 60))"
    echo "Reiniciando el sistema ahora..."
    systemctl reboot
else
    mostrar_opciones
    exit 1
fi

