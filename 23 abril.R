#Crear un data.frame, con las siguientes columnas
#Columnas:
#Marca (5 marcas de autos, character)
#Color (colores, character)
#Cil (cilindraje 4:6, numeric)
#topspeed (velocidad maxima, numeric)
#marcha (Automatica o manual, character) (logical?)
#acel (aceleracion km/h en 10 seg, numeric)
#peso (kg, numeric)
#year (año del vehiculo, numeric)

#Creacion de base de datos
listoral <- 50 #Creacion de observaciones en filas
marca <- sample(c("Ford","Tesla","BMW","Alfa Romero","Kia","Republic","Lock Head"),listoral,T)
color <- sample(c("Green","Blue","White","Yellow","Gold"),listoral,T)
topspeed <- sample(200:350,listoral,T)
marcha <- sample(c("A","M"),listoral,T)
cil <- sample(4:6,listoral,T)
acel <- sample(50:180,listoral,T)
peso <- sample(500:1700,listoral,T)
year <- sample(1950:2010,listoral,T)

#creacion de data.frame

carros <- data.frame(
  marca,
  color,
  topspeed,
  marcha,
  acel,
  peso,
  year) #row.names = "Marca","Color","Velocidad Maxima","Marcha","Acceleracion","Peso","Año")

carros

#Realizar filtros
carros$marcha == "A" #Data frame carros se selecciona el subconjunto marcha
carros[carros$marcha == "A",]

carros[carros$color == c("White","Gold"),]

str(carros[carros$color == c("White","Gold"),])
str(carros[carros$color %in% c("White","Gold"),])

carros[carros$color %in% c("Green","Gold") & carros$topspeed > 200,]

carros[carros$color %in% c("Green","Gold") & carros$topspeed > 200 | carros$peso < 1250,]

