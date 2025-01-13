#!/bin/bash

e00(){
    clear
    read -n 1 -p "Has entrado al metodo... "
    cd /

    touch /home/dam/sistemas/linux/ejercicios/ut3_3/APLI/PROG/JAVA/ut3_4.txt
    cd /home/dam/sistemas/linux/ejercicios/ut3_3/APLI/WORD/TEXTO/
    echo "Esto es un texto cualquiera" >> ../../PROG/JAVA/ut3_4.txt
    mkdir ../../../../ut3_4
    cd ../NOTAS

    cp /home/dam/sistemas/linux/ejercicios/ut3_3/APLI/PROG/JAVA/ut3_4.txt /home/dam/sistemas/linux/ejercicios/ut3_4/ut3_4cp.txt 
    touch /home/dam/sistemas/linux/results/ut3_4R.txt
    echo "El siguiente arbol de directorios corresponde a la ruta /home/dam/sistemas/linux/ejercicios/ut3_3" >> /home/dam/sistemas/linux/results/ut3_4R.txt
    tree /home/dam/sistemas/linux/ejercicios/ut3_3 >> /home/dam/sistemas/linux/results/ut3_4R.txt
    
    echo "El siguiente arbol de directorios corresponde a la ruta /home/dam/sistemas/linux/ejercicios/ut3_4" >> /home/dam/sistemas/linux/results/ut3_4R.txt
    tree /home/dam/sistemas/linux/ejercicios/ut3_4 >> /home/dam/sistemas/linux/results/ut3_4R.txt

    read -n 1 -p "Operaciones realizadas con éxito..."
}   


while [[ true ]]; do
    clear
    echo -e "\nEJERCICIO UT3_4\n"
    read -n 1 -p "¿Ejecutar[s/n]? " respuesta
    if [[ $respuesta == 's' || $respuesta == 'S' ]]; then
        e00
        #break
    elif [[ $respuesta == 'n' || $respuesta == 'N' ]]; then
        clear
        read -n 1 -p "Realmente desea salir[s/n]? " respuesta
        if [[ $respuesta == 's' || $respuesta == 'S' ]]; then
            break
        elif [[ $respuesta == 'n' || $respuesta == 'N' ]]; then
            echo ""
        else
            read -n 1 -p "La opción no es correcta"
        fi
    else
        read -n 1 -p "La opción no es correcta"
    fi
done
clear
echo -e "\nGracias por usar nuestras apps\n"
