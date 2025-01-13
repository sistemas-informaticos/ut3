#!/bin/bash

numero_aleatorio=$(( 1 + RANDOM % 200 ))
intentos=5

despedida(){
    clear
    echo -e "\n GRACIAS POR USAR NUESTRA APLICACIÓN\n"
}

buscarNumero(){
    while [[ true ]]; do
        clear
        echo -e "\nIndica un número entre 1 y 200 $numero_aleatorio" # No te olvides de quitar esta variable
        read -p "Número: " numero
        intentos=$(( intentos - 1 ))
        if [[ $numero -lt $numero_aleatorio  ]]; then
            echo -e "Ops, has fallado $(( 5 - intentos ))"
            echo -e "Te quedan $intentos intentos"
            echo -e "\nEl número que buscamos es mayor\n"
            read -n 1 -p "Pulsa una tecla para volver a intentarlo"
        elif [[ $numero -gt $numero_aleatorio ]]; then
            echo -e "Ops, has fallado $(( 5 - intentos ))"
            echo -e "Te quedan $intentos intentos"
            echo -e "\nEl número que buscamos es menor\n"
            read -n 1 -p "Pulsa una tecla para volver a intentarlo"
        else
            echo -e "\nHAS ACERTADO!\n"
            read -n 1 -p "Pulsa una tecla para volver al menú principal"
            break
        fi

        if [[ $intentos -eq 0 ]]; then
            clear
            echo -e "\nNO TE QUEDAN INTENTOS\n"
            echo -e "El número buscado es $numero_aleatorio"
            read -n 1 -p "Pulsa una tecla para volver al menú principal"
            break
        fi

    done
}

while [[ true ]]; do
    clear
    echo -e "🍺 APLICACIONES ERCILLA\n\n"
    echo "1. Encuentra el número"
    echo "2. Salir"
    read -n 1 -p "Elige una opción: " opcion
    if [[ $opcion == "1" ]]; then
        read -n 1 -p "Has elegido 1"
        buscarNumero
    elif [[ $opcion == "2" ]]; then
        read -n 1 -p "Has elegido 2"
        read -n 1 -p "¿Realmente deseas salir?[s/n]" opcion2
        if [[ $opcion2 == "s" || $opcion2 == "S" ]]; then
            despedida
            break
        fi
    else
        read -n 1 -p "Elige una opcion correcta . . . "
    fi
done

