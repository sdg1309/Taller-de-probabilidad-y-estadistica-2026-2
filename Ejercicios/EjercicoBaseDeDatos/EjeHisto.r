library(readxl)

dt <- read_excel("Ejercicios\\EjercicoBaseDeDatos\\Estatura y peso 2026.xlsx",
                 sheet = 1)

View(dt)

attach(dt)

h1 <- hist(ESTATURA,
           main = "Histograma de Estatura",
           xlab = "Estatura (cm)",
           ylab = "Frecuencia",
           col = "lightblue",
           border = "black")