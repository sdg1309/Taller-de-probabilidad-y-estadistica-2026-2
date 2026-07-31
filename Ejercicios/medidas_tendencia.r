# Clases y frecuencias:
lower <- c(1000, 2000, 3000, 4000, 5000)
upper <- c(2000, 3000, 4000, 5000, 6000)
freq <- c(25, 38, 45, 53, 33)

# Marca de clase (punto medio) y frecuencia acumulada
midpoint <- (lower + upper) / 2
cum_freq <- cumsum(freq)

# Tabla de frecuencias agrupadas
tabla <- data.frame(
  Clase = paste(lower, upper, sep = " - "),
  fi = freq,
  mi = midpoint,
  Fa = cum_freq
)
print(tabla)

# Total de observaciones
N <- sum(freq)

# Media agrupada:
x_barra <- sum(midpoint * freq) / N

# Mediana agrupada:
median_class <- which(cum_freq >= N / 2)[1]
Li_mediana <- lower[median_class]
fi_mediana <- freq[median_class]
Fa_mediana <- if (median_class == 1) 0 else cum_freq[median_class - 1]
A <- upper[median_class] - lower[median_class]
mediana <- Li_mediana + A * ((N / 2 - Fa_mediana) / fi_mediana)

# Moda agrupada:
mode_class <- which.max(freq)
Li_moda <- lower[mode_class]
fm <- freq[mode_class]
f1 <- if (mode_class == 1) 0 else freq[mode_class - 1]
f2 <- if (mode_class == length(freq)) 0 else freq[mode_class + 1]
h <- upper[mode_class] - lower[mode_class]
moda <- Li_moda + ((fm - f1) / ((fm - f1) + (fm - f2))) * h

# Resultados
cat("Resultados para datos agrupados:\n")
cat(sprintf("Total de observaciones (N): %d\n", N))
cat(sprintf("Media agrupada (x bar): %.2f\n", x_barra))
cat(sprintf("Mediana agrupada: %.2f\n", mediana))
cat(sprintf("Moda agrupada: %.2f\n", moda))
