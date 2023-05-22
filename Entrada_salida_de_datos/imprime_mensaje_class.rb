#Programa que declara una clase con métodos que imprimen mensajes

class SaludarDespedirPersona #=> Sobre sintaxis: en las clases se debe empezar en mayúscula y no se pueden usar guiones bajos

	#Método que inicializa una variable "nombre", que será usada por el resto de métodos de la clase (constructor)
	#Si no se proporciona un nombre, se utilizará "Mundo" por defecto.
	#Solo puede haber un método de este tipo por clase en Ruby, más adelante veremos como inicializar objetos de 
	#distintas formas usando condiciones

	def initialize(nombre = "Mundo")
		@nombre = nombre
	end

	#Mediante esta línea damos acceso a la modificación de la variable creada "nombre"

	attr_accessor :nombre

	#Métodos de la clase. La única diferencia es que no tienen parámetros (aunque podrían).

	def saludar
		puts "Hola, #{@nombre}"
	end

	def despedir
		puts "Adios, #{@nombre}"
	end

	def saludar_mayus
		puts "Hola, #{@nombre.capitalize}"
	end

	def despedir_mayus
		puts "Adios, #{@nombre.capitalize}"
	end

end

#Funcion para poner saltos de línea

def salto_de_linea
	puts "\n"
end

#Creamos diferentes objetos de la clase creada

persona_1 = SaludarDespedirPersona.new("Pepote")

persona_2 = SaludarDespedirPersona.new("Pepito")

mundo = SaludarDespedirPersona.new()

persona_1.saludar

salto_de_linea

persona_2.despedir

salto_de_linea

mundo.saludar

salto_de_linea

#Modificamos el nombre de la persona_1

persona_1.nombre="Pablo"

persona_1.saludar
















