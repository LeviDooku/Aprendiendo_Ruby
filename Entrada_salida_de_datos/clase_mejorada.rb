=begin

Esta es una versión mejorada de la clase del archivo "imprime_mensaje_class.rb"

Está basada (al igual que la mayoría del código en estos archivos) en la clase encontrada
en la propia página de ruby, a la que se puede acceder mediante el siguiente link:

ruby-lang.org/en/documentation/quickstart/

(hay un hipérvinculo a esta página en README.md)
	
=end

class SaludarDespedirMejorada

	#Constructor y el getter/setter de la variable nombre

	def initialize(nombres = "Mundo")
		@nombres = nombres
	end

	attr_accessor :nombres

	#Método para saludar

	def saludar

		if @nombres.nil? #=> ".nil?" se refiere a nulo, es decir, no hay nombres. Esto solo pasará si hacemos "nombres = nil"
			puts "No hay nadie a quien saludar :("

		elsif @nombres.respond_to?("each") #=> Si es una lista de nombres (array), itera cada elemento del mismo. (== bucle for en c++)
			@nombres.each do |nombre|
				puts "Hola, #{nombre}"
			end

		else	#=> Si no es una lista (solo un nombre), se muestra
			puts "Hola, #{@nombres}"

		end
	end


	#Método para despedir

	def despedir
		if @nombres.nil?
			puts "No hay nadie a quien despedir :("

		elsif @nombres.respond_to?("join")
				puts "Adiós, #{@nombres.join(", ")}.	Vuelva pronto!" #=> ".join(", ")" separa los elementos del array con comas

		else 
			puts "Adiós, #{@nombres}"

		end
	end
end


def salto_de_linea
	puts "\n"
end

=begin

Ruby es un lenguaje modularizable, por tanto, se puede dividir el código en varios archivos
si así lo deseamos. La línea "if __FILE__ == $0" comprueba el archivo a la hora de ejecutarse.

Se desglosa de la siguiente forma:

"__FILE__": variable especial que contiene el nombre del archivo ("clase_mejorada.rb")

"$0": variable global que contiene el nombre del archivo ejecutándose

Por lo tanto este condicional comprueba si es este archivo el que se está ejecutando.

Es una práctica muy común en Ruby escribir esta línea de código.  
	
=end


if __FILE__ == $0

	objeto_clase = SaludarDespedirMejorada.new()

	#Usamos el argumento por defecto

	puts "MÉTODOS CON ARGUMENTO POR DEFECTO: "

	salto_de_linea

	objeto_clase.saludar

	objeto_clase.despedir

	salto_de_linea

	#Cambiamos el valor por defecto y volvemos a usar los métodos

	puts "MÉTODOS CON UN NOMBRE: "
		
	salto_de_linea

	objeto_clase.nombres = "Pepote"

	objeto_clase.saludar

	objeto_clase.despedir

	salto_de_linea

	#Creamos un array de nombres

	puts "MÉTODOS CON UNA LISTA DE NOMBRES: "

	salto_de_linea

	objeto_clase.nombres = ["Pepote", "Pepito", "Pablo", "Paco"]

	objeto_clase.saludar

	objeto_clase.despedir

	salto_de_linea

	#Declaramos la variable "nombres" como nula

	puts "MÉTODOS CON NOMBRES = NIL: "

	salto_de_linea

	objeto_clase.nombres = nil

	objeto_clase.saludar

	objeto_clase.despedir

	salto_de_linea

end