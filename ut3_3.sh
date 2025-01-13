#!/bin/bash
while [[ true ]]; do
    clear
    read -n 1 -p ¿Ejecutar[s/n]? respuesta
    if [[ $respuesta == 's' || $respuesta == 'S' ]]; then
        cd /home/$USER/sistemas/linux/ejercicios/ut3_3
        mkdir -p ./APLI
        cd ./APLI
        mkdir -p ./WORD ./ACCESS ./EXCEL ./PROG ./VARIOS
        mkdir -p ./WORD/TEXTO ./WORD/NOTAS ./EXCEL/TABLAS ./EXCEL/INFO
        mkdir -p ./PROG/JAVA ./PROG/PYTHON ./PROG/CSHARP
        touch "/home/$USER/sistemas/linux/results/ut3_3R.txt"
        tree ./../ > "/home/$USER/sistemas/linux/results/ut3_3R.txt"
        clear
        read -n 1 -p "Proceso realizado con éxito. Pulsa una tecla para salir..."
        clear
        break
    elif [[ $respuesta == 'n' || $respuesta == 'N' ]]; then
        break
    fi
done
