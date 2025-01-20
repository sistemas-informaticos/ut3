#!/bin/bash

# Ejercicio UT3_4

e00(){
	clear
	echo -e "\n"
	read -n1 -p "Has entrado al metodo"
	# 1. Crear archivo ut3_4.txt en directorio JAVA
	touch /home/damx/sistemas/linux/ejercicios/ut3_3/APLI/PROG/JAVA/ut3_4.txt
	
	# 2. Escribir dentro del archivo
	# 2.1 Movernos hasta TEXTO con ruta absoluta
	cd /home/damx/sistemas/linux/ejercicios/ut3_3/APLI/WORD/TEXTO
	echo "Una frase la que quiera" >> ../../PROG/JAVA/ut3_4.txt
	
	# 3. Crear el directorio ut3_4 en la ruta de ejercicios
	mkdir ../../../../ut3_4
	
	# 4. Desplazate hasta NOTAS usando ruta relativa
	# (nos encontramos en TEXTO)
	cd ../NOTAS
	# Copiar usando ruta absoluta el archivo ut3_4.txt en ut3_4 con el nombre
	# ut3_4cp.txt
	cp /home/damx/sistemas/linux/ejercicios/ut3_3/APLI/PROG/JAVA/ut3_4.txt /home/damx/sistemas/linux/ejercicios/ut3_4/ut3_4cp.txt
	
	# 5. Guardar el arbol de directorios de UT3_2 y de UT3_3 en un archivos
	# usando ruta absoluta
	echo "Este arbol corresponde a /home/damx/sistemas/linux/ejercicios/ut3_2" >> home/damx/sistemas/linux/results/UT3_4R.txt 
	tree /home/damx/sistemas/linux/ejercicios/ut3_2 >> /home/damx/sistemas/linux/results/UT3_4R.txt
	
	echo "Este arbol corresponde a /home/damx/sistemas/linux/ejercicios/ut3_3" >> home/damx/sistemas/linux/results/UT3_4R.txt 
	tree /home/damx/sistemas/linux/ejercicios/ut3_3 >> /home/damx/sistemas/linux/results/UT3_4R.txt
	
	read -n1 -p "Método finalizado"
	
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
