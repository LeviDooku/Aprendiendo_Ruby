#Pograma pa probar los distintos bucles, condicionales y declaración y uso de variables en Ruby

class SaludarDespedirPersona

	def initialize(nombre = "Mundo")
		@nombre = nombre
	end

	attr_accessor :nombre

	def saludar
		puts "\nHola, #{@nombre}"
	end

	def despedir
		puts "\nAdiós, #{@nombre}"
	end
end

def salto_de_linea
	puts "\n"
end

if __FILE__ == $0

	salto_de_linea

	#Entrada de datos

	puts "¿Que desea probar?:"
	salto_de_linea
	puts "[1] Bucle for y times"
	puts "[2] Bucle while"

	eleccion = gets.chomp.to_i #=> El método "to_i" convierte a entero la entrada (leída por consola como un string) y 

	#Filtro la entrada mediante un bucle while

	while eleccion != 1 && eleccion != 2
		puts "EL número debe ser [1] o [2]"
		salto_de_linea
		puts "¿Que desea probar?: \n"
		eleccion = gets.chomp.to_i
	end

	#Mediante un condicional seleccionamos dependiendo de la entrada del usuario

	if eleccion == 1

		#Para crear un array de nombre usaremos un bucle "time", propio de Ruby

		salto_de_linea
		puts "Probaremos un bucle times primero:\n "
		salto_de_linea
		print "Escribiremos y mostraremos una lista de nombres. "
		print "¿Cuántos nombres desea en la lista?: "
		num_elementos = gets.chomp.to_i #=> El array de nombre tendrá un número determinado de elemtos
		salto_de_linea

		#Filtramos la entrada usando un while

		while num_elementos < 0 
			print "Solo se admiten enteros positivos, pruebe de nuevo: "
			num_elementos = gets.chomp.to_i
		end

		array_nombres = [] #=> Creamos el array de nombres vacío

		#El bucle "times" itera un trozo de código un número "num_elementos"
		#de veces, cada iteración se controla con otra variable ("i"), que va
		#de 0 hasta "num_elementos"


		num_elementos.times do |i|

			print "Escriba nombre #{i + 1}: " #=> Como i=0 en la 1era itearación, sumamos uno para una salida más "amigable"
			nombre = gets.chomp
			array_nombres << nombre #=> Usamos el operador "<<" introducimos cada nombre en una posición del array

		end	

		salto_de_linea
		puts "Usaremos ahora un bucle for para mostrar la lista de nombres:\n"
		salto_de_linea

		#Usamos un ciclo for para mostrar los nombres dentro del array

		#La sintaxis es bastante sencilla e intuitiva

		for i in 0..(num_elementos-1)

			#Declaramos un objeto que cambia cada iteración
			nombre = SaludarDespedirPersona.new(array_nombres[i])
			print "Se muestra nombre #{i+1}: "
			print nombre.saludar #=> Podemos usar los métodos de la clase libremente ahora
			salto_de_linea

		end

		#Para los arrays existe un método "inspect", más sencillo que usar bucles for.

	else

		#Por si no ha quedado claro el while, aquí un ejemplo de un contador simple

		salto_de_linea
		puts "Probaremos un bucle while\n"
		salto_de_linea
		print "Implementaremos un contador, ¿hasta donde quiere contar? (solo enteros positivos): "
		lim_contador = gets.chomp.to_i

		while lim_contador < 0

			salto_de_linea
			print "Solo se admiten enteros positivos, pruebe de nuevo: "
			lim_contador = gets.chomp.to_i
			
		end

		contador = 0

		while contador <= lim_contador

			puts "Números contados: #{contador}"
			contador += 1

		end
	end
end