# -----------------------------------------------------------------------------
# 1) Importar datos desde un archivo
# -----------------------------------------------------------------------------

# Si no tienes un archivo, puedes usar este ejemplo de datos
# dt debe tener columnas como categoria y valor

dt <- data.frame(
  categoria = c("A", "B", "C", "D"),
  valor = c(20, 35, 15, 30)
)

# -----------------------------------------------------------------------------
# 2) Gráfico normal (plot)
# -----------------------------------------------------------------------------

# Ejemplo simple de plot
plot(
  x = seq_len(nrow(dt)),
  y = dt$valor,
  type = "b",
  col = "steelblue",
  pch = 19,
  lwd = 2,
  main = "Gráfico normal de valores",
  xlab = "Índice",
  ylab = "Valor"
)

# -----------------------------------------------------------------------------
# 3) Pie chart (gráfico de pastel)
# -----------------------------------------------------------------------------

# Opción 1: asignar un color fijo a cada categoría
# Aquí el color de la categoría "B" será rojo, mientras que las demás seguirán un esquema
colores <- c("#4E79A7", "#FF0000", "#E15759", "#76B7B2")

# También puedes hacerlo de forma dinámica:
# si quieres que una categoría específica tenga un color especial, por ejemplo "B"
# colores <- rep("#4E79A7", nrow(dt))   # color por defecto para todas
# colores[dt$categoria == "B"] <- "#FF0000"  # categoría específica en rojo

# Crear etiquetas con nombres y porcentajes automáticos
porcentajes <- round(100 * dt$valor / sum(dt$valor), 1)
etiquetas <- paste(dt$categoria, paste0(porcentajes, "%"), sep = " - ")

pie(
  dt$valor,
  labels = etiquetas,
  col = colores,
  main = "Gráfico de pastel",
  cex = 0.9
)

# Si quieres una leyenda
legend(
  "topright",
  legend = dt$categoria,
  fill = colores,
  cex = 0.8
)

# -----------------------------------------------------------------------------
# 4) Histograma
# -----------------------------------------------------------------------------

hist(
  dt$valor,
  breaks = 8,
  col = "lightblue",
  border = "black",
  main = "Histograma de valores",
  xlab = "Valor",
  ylab = "Frecuencia"
)

# -----------------------------------------------------------------------------
# 5) Ejemplo con datos importados desde CSV o Excel
# -----------------------------------------------------------------------------

# Ejemplo si tu archivo CSV tiene columnas: categoria y valor
# dt <- read.csv("datos.csv")
# pie(dt$valor, labels = paste(dt$categoria, round(100 * dt$valor / sum(dt$valor), 1), "%"), col = c("red", "blue", "green"))
# hist(dt$valor, col = "orange", main = "Histograma importado")

# Ejemplo si tu archivo Excel tiene esas mismas columnas
# library(readxl)
# dt <- read_excel("datos.xlsx")
# pie(dt$valor, labels = paste(dt$categoria, round(100 * dt$valor / sum(dt$valor), 1), "%"), col = c("purple", "pink", "gray"))
# hist(dt$valor, col = "darkgreen", main = "Histograma importado")
