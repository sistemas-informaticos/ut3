#!/bin/bash
mypasswd="SECRETO"
intentos=3

clear
echo -e "\nAPLICACION LOGIN \n"
read -p "Dime tu nombre: " nombre
echo -e "Hola $nombre"

while [[ true ]]; do
    read -p "Indica la contraseña: " passwd
    if [[ $mypasswd != $passwd ]]; then
        echo -e "\nHas fallado 😓 \n"
        read -n 1 -p "Pulsa una tecla..."
        intentos=$(( intentos-1 ))
        if [[ $intentos -eq 0 ]]; then
            read -n 1 -p "Ya no tienes intentos"
            break
        fi
    else
        read -n 1 -p "Muy bien $nombre, gracias por venir"
        break
    fi
    clear
done



