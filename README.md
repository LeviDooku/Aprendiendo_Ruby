# Aprendiendo_Ruby

Repositorio de pequeños y simples programas explicados en Ruby.  

La mayoría del código (al menos los primeros programas) está basado en el [tutorial de la propia web de Ruby](https://www.ruby-lang.org/en/documentation/quickstart/) 

Ruby es un lenguaje interpretado, por ello no se necesita compilador, para ejecutar un programa en la terminal se usa el comando `ruby nombre_del_archivo.rb`

### **Explicación directorios:**

- `Entrada_salida_de_datos`: incluye programas introductorios a los flujos de salida y entrada en Ruby. Introduce el concepto de función y clase.

### **Lista de programas:**  

- De la carpeta `Entrada_salida_de_datos`:  

	- [`hola_mundo.rb`](Entrada_salida_de_datos/hola_mundo.rb): imprimir un "Hello World" en la terminal. CONCEPTOS USADOS: declaración de una función y llamada a la misma, flujo de salida en la terminal.   
	- [`imprime_mensaje.rb`](Entrada_salida_de_datos/imprime_mensaje.rb): imprime un mensaje usando una función a la que se le pasa un parámetro, si no se le pasa, imprime uno por defecto. CONCEPTOS USADOS: creación de una variable local, valores por defecto de una función.  
	- [`imprime_mensaje_class.rb`](Entrada_salida_de_datos/imprime_mensaje_class.rb): introducción a las clases, se crea con distintos métodos para imprimir distintos mensajes. CONCEPTOS USADOS: clases y su constructor, setter y getter y métodos. Creación y uso de un objeto de la clase.  
	- [`clase_mejorada.rb`](Entrada_salida_de_datos/clase_mejorada.rb): una versión mejorada de la clase de `imprime_mensaje_class.rb`, los métodos son más detallados, usando condicionales, iterar sobre un array de nombre y la declaración del mismo. CONCEPTOS USADOS: iterar sobre una lista de datos, condicionales, uso del `nil` (valor nulo),explicación de modularización en Ruby