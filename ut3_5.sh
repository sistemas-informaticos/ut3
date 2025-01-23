#!/bin/bash

e01(){
	clear
	echo "esto es el metodo e01"
	echo "El valor del primer argumento es: $1"
	
	directorio=$1
	# $HOME es /home/usuario
	mkdir "$HOME/sistemas/linux/ejercicios/ut3_5/$directorio"
	resultado=$?
	if [[ $resultado -eq 0 ]]; then
		
		echo -e "Directorio $directorio, creado correctamente\n"
		read -n1 -p "Pulsa una tecla para continuar... "
		return 0
	else
		echo -e "El directorio $directorio, ya existe! \n"
		read -n1 -p "Pulsa una tecla para continuar... "
		return 1
	fi
	
}

e02(){
	
	echo "Esto es el metodo e02"
	echo "El valor del primer argumento es: $1"
	echo "El valor del segundo argumento es: $2"
	e01 $1
	retorno=$?
	# Comprueba si se ha creado el directorio correctamente
	if [[ $retorno -eq 1 ]]; then
		return
	fi
	# Si se crea el directorio, creamos el archivo
	touch "$HOME/sistemas/linux/ejercicios/ut3_5/$1/$2"
	ruta_archivo="$HOME/sistemas/linux/ejercicios/ut3_5/$1/$2"
	read -n1 -p "Exito. Pulsa una tecla para continuar..."
}

e03(){
	echo "Esto es el metodo e03"
	echo "El valor del primer argumento es: $1"
	echo "El valor del segundo argumento es: $2"
	echo "El valor del tercer argumento es: $3"
	echo -e "$1\n $2\n $3" >> $ruta_archivo
	read -n1 -p "Pulsa una tecla para continuar..."
}

e04(){
	echo "Esto es el metodo e04"
	echo "El valor del primer argumento es: $1"
	echo "El valor del segundo argumento es: $2"
	echo "El valor del tercer argumento es: $3"
	echo "El valor del cuarto argumento es: $4"
	read -n1 -p "Pulsa una tecla para continuar..."
}

check_fichero(){
	fichero=$1
	if [[ $fichero == *.txt ]]; then
		echo ""
		read -n1 -p "El fichero es correcto"
		nombre_fichero=$fichero
		return 0
	else
		echo ""
		read -n1 -p "El nombre del fichero NO es correcto"
		if [[ $fichero != *.* ]]; then
			echo ""
			read -n1 -p "¿Deseas que pongamos .txt nosotros? [s/n]" respuesta
			if [[ ${respuesta,,} == 's' ]]; then
				nombre_fichero="$fichero.txt"
				return 0
			fi 
		fi
	fi
	return 1
}

menu(){
	while [[ true ]]; do
		clear
		echo ""
		echo "-----------------------------"
		echo "   🐣️     ERCIAPPS       🧥️  "
		echo "-----------------------------"
		echo ""
		echo "1. Llamar al método e01"
		echo "2. Llamar al método e02"
		echo "3. Llamar al método e03"
		echo "4. Llamar al método e04"
		echo "5. Salir"
		echo ""
		read -n1 -p "Selecciona una opción [1-5]: " opcion
		echo ""
		if [[ $opcion -eq 1 ]]; then
			# $HOME es una variable del sistema que corresponde a /home/usuario
			# Intentamos acceder al directorio, si no existe no continuamos
			cd "$HOME/sistemas/linux/ejercicios/ut3_5"
			respuesta=$?
			if [[ $respuesta -eq 0 ]]; then
				# Si el directorio existe, ejecutamos el método
				echo ""
				read -p "Dime el nombre del directorio: " directorio
				e01 $directorio
				
			else
				clear
				echo ""
				read -n1 -p "La ruta $HOME/sistemas/linux/ejercicios/ut3_5 no existe. Ponte en contacto con el administrador"
			fi
			
		elif [[ $opcion -eq 2 ]]; then
			echo ""
			read -p "Dime el nombre del directorio: " directorio
			echo ""
			read -p "Dime el nombre del fichero (.txt): " fichero
			check_fichero $fichero
			retorno=$?
			echo ""
			#read -n1 -p "El retorno es $retorno y fichero: $nombre_fichero"
			if [[ $retorno -eq 0 ]]; then
				e02 $directorio $nombre_fichero
			else
				echo ""
				read -n1 -p "Vuelve a escribir el nombre del fichero"
			fi
			
		elif [[ $opcion -eq 3 ]]; then
			if [[ $ruta_archivo == "" ]]; then
				echo ""
				read -n1 -p "Ejecuta la opción 2 antes (no existe archivo)"
			else
				echo ""
				read -p "Dime el primer argumento: " arg1
				echo ""
				read -p "Dime el segundo argumento: " arg2
				echo ""
				read -p "Dime el tercer argumento: " arg3
				e03 "$arg1" "$arg2" "$arg3"
			fi
			
		elif [[ $opcion -eq 4 ]]; then
			e04
		elif [[ $opcion -eq 5 ]]; then
			echo ""
			read -n1 -p "¿Realmente quieres salir?[s/n]: " opcion
			if [[ $opcion == 'S' || $opcion == 's' ]]; then
				echo ""
				read -n1 -p "¿Pero de verda que si 🙄️?[s/n]: " opcion
				# ${opcion,,} convierte la cadena a minusculas
				if [[ ${opcion,,} == 's' ]]; then
					echo ""
					read -n1 -p "Gracias por usar nuestra APP"
					break
				fi
			elif [[ ${opcion,,} != 'n'  ]]; then
				echo ""
				read -n1 -p "La opción no es correcta"
			fi	
		else
			read -n1 -p "La opción seleccionada no existe..."
		fi
	done
}	
ruta_archivo=""
nombre_fichero=""
menu
