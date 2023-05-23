#En este programa el usuario podrá elegir el valor de la variable "nombre"

#Usaré la clase del archivo "imprime_mensaje_class.rb"

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

	#Entrada de datos:

	puts "Escriba un nomnbre: "

	#Obtener el valor de "nombre" mediante el teclado en la terminal

	nombre = gets.chomp #=> El método "chomp" elimina el "\n" al final de la cadena introducida

	persona_1 = SaludarDespedirPersona.new(nombre) #=> Creamos un objeto de la clase

	salto_de_linea

	#Proceso y salida

	puts "¿Qué desea hacer?: \n"

	salto_de_linea

	puts "[1] Para saludar \n[2] Para despedir"

	numero = gets.chomp.to_i #=> "to_i" convierte la cadena a un valor entero

	#Mediante un condicional filtramos el valor de "numero" y seleccionamos la salida

	#(Fácilmente podríamos implementear este proceso mediante un "while")

	if numero < 1 || numero > 2

		puts "Número incorrecto"

	elsif numero == 1

		persona_1.saludar

	else 

		persona_1.despedir
	end

end