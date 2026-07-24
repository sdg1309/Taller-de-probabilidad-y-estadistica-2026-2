datos <- read.csv("Ejercicios\\LeerBaseDeDatos\\exel1.csv",
                  header = TRUE,
                  stringsAsFactors = FALSE,
                  sep = ",")

attach(datos)

pie(
  Estudiantes,
  labels = Carrera,
  main = "Diagrama circular de exel1.csv"
)