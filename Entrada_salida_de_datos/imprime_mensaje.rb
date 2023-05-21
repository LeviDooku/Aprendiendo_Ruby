#Programa que imprime un mensaje

#Declaramos una función con un parámetro "nombre", que por defecto es = "World"

def imprime_nombre(nombre = "World")
	puts "Hola #{nombre}"
end

#Si se le pasa un parámetro a la función imprime "Hola Pepote"

imprime_nombre("Pepote")

puts "\n" #(Salto de línea)

#En cambio si la llamamos de esta forma...

imprime_nombre #=> Es válido escribir "imprime_nombre()"

#...Imprime el valor por defecto "World", quedando un "Hello World"

#Declarando la función de esta forma, agregando el método "capitalize" al parámetro
#nos aseguramos de que la salida siempre comienze con una mayúscula

def imprime_nombre_mayus(nombre = "World")
	puts "Hola #{nombre.capitalize}" 
end

puts "\n"

imprime_nombre_mayus("pepote") #=> La salida será "Hola Pepote"

