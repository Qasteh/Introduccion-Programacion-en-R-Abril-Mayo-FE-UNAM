#1:Crear un vector que sus elementos sean las letras del abecedario
#2:Crear un ciclo que imprima cada elemento
#3:Crear una matriz de 6 por 6, que contenga elementos creados por un sample()
#4:Crear una funcion que calcule la raiz cuadrada de los elementos de un vector
#5:Crear crear una funcion de calculo para "LA CHICHARRONERA"

#1
alp <- c(letters)
#Checa en consola ?letters : "letters: the 26 lower-case letters of the Roman alphabet"
#A la variable m_alp se le asigna [<-] los argumentos [c()] del vector [letters]

#2
for (i in alp){
  print(i)  
}
# Para usar "for":
  #Sintaxis:("variable que se repetira en secuencia o vector" in "secuencia o vector a evaluar") {"expresion a realizar"}
#Funcionamiento: la variable "alp" es un vector de "characters" siendo sus valores, las letras del alfabeto, vector ya asignado del ejercicio 1
#Si "alp[1]" en consola dara "a", si "alp[20]" en consola dara "t"
#Try em
alp[1]
alp[20]
#"i" es la variable a usar, puede ser cualquiera otra letra, o palabra, "i" en programacion es como "x" en algebra
#Como "for" es una repeticion, la primera repeticion sera asi
# Primera repeticion
  # i es igual a 1, 1 aplicado en el vector, i es igual a alp[1] : i <- alp[1]
  #Entonces en {expresion a realizar} imprimimos i : print(i)
      #[1] "a"
#Como no hemos alcanzado el ultimo valor de secuencia o vector, se repite el loop
# Segunda repeticion
  # i es ahora igual a 2, 2 aplicado en el vector, i es igual a alp[2] : i <- alp[2]
  #Entonces en {expresion a realizar} imprimimos i : print(i)
      #[1] "b"
#Asi hasta alcanzar el ultimo valor dentro de la secuencia o vector, en nuestro caso 26
#Al acabar, la expresion "for" se termina, dando como resultado
#[1] "a"
#[1] "b"
#[1] "c"
#[1] "d"
#[1] "e"
#...
#[1] "x"
#[1] "y"
#[1] "z"
#Da [1] por que es el unico valor guardado en la variable "i", y dando tal valor "letras", e "i" se reasigna continuamente con todas las "letras"
#al llegar al final si miras tu Environment , quedo la variable "i" guardado con el ultimo valor que se le asigno "z"     ---->

#3
m_sam_col <- 6
m_sam_row <- 6
m_sam <- matrix(c(sample(((m_sam_col*m_sam_row)**2),(m_sam_row*m_sam_col),replace = F)),nrow = m_sam_row,ncol = m_sam_col,byrow = F)
#Asigno en m_sam_col: el numero de columna para crear mi matrix
#Asigno en m_sam_row: el numero de filas para crear mi matrix
#Comiendo creando la matrix
      #Sintaxis de matrix(datos, nrow = numero de filas, ncol = numero de columnas, byrow = si F[por default], se llenara la matrix por columnas, no por filas)
  #En el primer argumento (en datos para la matrix)
  #Numero de filas y columnas dependera de los valores asignados previamente
  #"byrow" opcional es este caso
#c() : asignar valores como vector
#Usaremos sample() para crear tales elemtos dentro del vector
  #Sintanxis de sample("elemento maximo a utilizar en la muestra","numero de muestras a crear","la muestra se reemplaza?")
  #"valor maximo para la muestra" es igual al numero de columnas a usar por numero de filas elevados al cuadrado
  #"numero de muestras a crear" es igual al numero de filas por numero de columnas igual al tamaño de nuestra matrix
  #"la muestra se reemplaza" opcional

#4
raiz_cua <- function(x){
  sqrt(x)
}
#function sintanxis: function("aqui pondremos separado por comas todas las variables a usar, solamente dentro de la funcion, como variables locales")
#{} aqui adentro haremos la expresion de como usaremos esas variables locales
  #A la variable local "x" se le aplicara la raiz cuadrada
?sqrt
#sqrt es una funcion ya integrada en R, y nosotros creamos nuestras funciones asi para uso y desarrollo propio
#Para utilizar la funcion:
  #Escribiremos nuestra funcion 
      #raiz_cua()
  #dentro de (), pide un argumento, un numero el cual nos dara la raiz cuadrada
#Try em
raiz_cua(100)
raiz_cua(9)
raiz_cua(89)

#5
chrn <- function(a,b,c){
  raiz1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
  raiz2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)
  rt <- vector("numeric",2)
  rt <- c(raiz1,raiz2)
  return(rt)
}
#Varibles locales a utilizar a,b,c
#Los resultados de usarlas se asignaran a raiz1 y raiz2
#Las cuales se asignara a un vector tipo "numeric" que contiene 2 datos:  rt <- c(raiz1,raiz2)
#Return() dice al programa que al terminar el programa, no de tal cosa [previamente trabajada en la funcion]

#Try em
chrn(5,3,-1)
chrn(6,6,-12)
#Limites de la funcion, si las raices son imaginarias, nos dara error
chrn(23,-3,45)