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

	def saludar_mayus
		puts "\nHola, #{@nombre.capitalize}"
	end

	def despedir_mayus
		puts "\nAdiós, #{@nombre.capitalize}"
	end

end

def salto_de_linea
	puts "\n"
end

if __FILE__ == $0

	salto_de_linea

	puts "¿Que desea probar?:"
	salto_de_linea
	puts "[1] Bucle for y times"
	puts "[2] Bucle while"

	eleccion = gets.chomp.to_i

	while eleccion != 1 && eleccion != 2

		puts "EL número debe ser [1] o [2]"
		salto_de_linea
		puts "¿Que desea probar?: \n"
		eleccion = gets.chomp.to_i
	end

	if eleccion == 1

		salto_de_linea
		puts "Probaremos un bucle times primero:\n "
		salto_de_linea
		print "Escribiremos y mostraremos una lista de nombres. "
		print "¿Cuántos nombres desea en la lista?: "
		num_elementos = gets.chomp.to_i
		salto_de_linea

		while num_elementos < 0

			print "Solo se admiten enteros positivos, pruebe de nuevo: "
			num_elementos = gets.chomp.to_i
		end

		array_nombres = []

		num_elementos.times do |i|

			print "Escriba nombre #{i + 1}: "
			nombre = gets.chomp
			array_nombres << nombre

		end	

		salto_de_linea
		puts "Usaremos ahora un bucle for para mostrar la lista de nombres:\n"
		salto_de_linea

		for i in 0..(num_elementos-1)
			nombre = array_nombres[i]
			print "Se muestra nombre #{i+1}: "
			print "#{nombre}"
			salto_de_linea
		end

	else

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

		while contador < lim_contador

			puts "Números contados: #{contador}"
			contador += 1

		end
	end
end