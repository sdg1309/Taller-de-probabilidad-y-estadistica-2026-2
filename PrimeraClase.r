#Mi primer codigo en R

print("Hello world")
print("This is a new line")

# Definicion de Variabes:
# Para definir una variable se usa "<-" o "="

u <- 238

u + 5
print(u)

# Se usa a:b para generar un vector de valores del a al b.
a <- 1:20
print(a)

# Para hacer una secuencia de numeros con un paso definido usamos seq()
# La funcion seq() recibe los siguientes argumentos:
# - from: valor inicial de la secuencia
# - to: valor final de la secuencia
# - by: paso de la secuencia
b <- seq(1, 50, by = 3)
print(b)

#Para imprimir un mensaje concatenando variables se usa la funcion paste()

nombre <- "Santiago"
print(paste("Yo soy", nombre))

#Numeros aleatorios:
#Para generar un numero aleatorio se usa la funcion runif()
#que recibe los siguientes argumentos:
# - n: cantidad de numeros aleatorios a generar
# - min: valor minimo del rango de numeros aleatorios
# - max: valor maximo del rango de numeros aleatorios
x <- runif(n = 1, min = 0, max = 100)
print(x)