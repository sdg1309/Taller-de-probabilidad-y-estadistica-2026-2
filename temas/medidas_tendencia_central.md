# Medidas de tendencia central

Las medidas de tendencia central indican el valor típico o el punto medio de un conjunto de datos. Las más comunes son la media, la mediana y la moda.

## Media

### Media no agrupada
Para datos no agrupados, la media aritmética se obtiene sumando todos los valores y dividiendo entre el número total de observaciones. A esta media también se le llama `x̄` (X barra).
- Fórmula: x̄ = (x1 + x2 + ... + xn) / n
- Ejemplo: para los datos 2, 3, 3, 5, 8, x̄ = (2 + 3 + 3 + 5 + 8) / 5 = 4.2
- Es sensible a valores extremos (outliers).

### Media agrupada
Para datos agrupados, se usa la marca de clase y la frecuencia de cada clase.
- Fórmula: x̄ = (Σ fi · mi) / Σ fi
- Donde fi es la frecuencia de la clase i y mi es la marca de clase (punto medio del intervalo).

#### Marca de clase
- Marca de clase: mi = (Li + Ls) / 2, donde Li es el límite inferior y Ls es el límite superior de la clase.
- Por ejemplo, para la clase 10–20, mi = (10 + 20) / 2 = 15.

#### Frecuencia acumulada
La frecuencia acumulada se calcula sumando las frecuencias de todas las clases anteriores.
- Si la primera clase tiene fi = 5, su frecuencia acumulada es 5.
- Si la segunda clase tiene fi = 8, su frecuencia acumulada es 5 + 8 = 13.
- Estas acumuladas se usan para hallar la clase mediana y entender cuántas observaciones están por debajo de cada intervalo.

## Mediana

### Mediana no agrupada
Para datos no agrupados, la mediana es el valor central de los datos ordenados.
- Si n es impar, es el valor en la posición (n + 1) / 2.
- Si n es par, es el promedio de las dos observaciones centrales.

### Mediana agrupada
Para datos agrupados, la mediana se estima con una fórmula que usa la amplitud de clase y la frecuencia acumulada anterior a la clase mediana.
- Fórmula: Mediana = Li + A · ((N/2 - F_(i-1)) / fi)

#### Significado de los símbolos
- Li es el límite inferior de la clase mediana.
- A es la amplitud de clase (ancho de la clase).
- N es el número total de observaciones.
- F_(i-1) es la frecuencia acumulada antes de la clase mediana.
- fi es la frecuencia de la clase mediana.

#### Pasos para aplicar la fórmula
1. Calcular N, el total de observaciones.
2. Calcular N/2 para encontrar la posición de la mediana.
3. Construir la tabla de frecuencias y la frecuencia acumulada.
4. Identificar la clase mediana: la primera clase cuya frecuencia acumulada es mayor o igual a N/2.
5. Anotar Li, fi y F_(i-1) para esa clase.
6. Usar la amplitud de clase A.
7. Sustituir en la fórmula y calcular la mediana.

## Moda

### Moda no agrupada
Para datos no agrupados, la moda es el valor que aparece con mayor frecuencia.

### Moda agrupada
Para datos agrupados, se estima con la clase modal.
- Fórmula: Moda = Li + ((fm - f1) / ((fm - f1) + (fm - f2))) · h

#### Significado de los símbolos
- Li es el límite inferior de la clase modal.
- fm es la frecuencia de la clase modal.
- f1 es la frecuencia de la clase anterior.
- f2 es la frecuencia de la clase siguiente.
- h es el ancho de la clase.

#### Notación M_e
- A veces se usa la notación `M_e` para referirse al valor modal estimado en datos agrupados.
- Se puede expresar como `M_e = Li + h` en ciertos contextos cuando se considera el límite inferior de la clase modal más la amplitud de clase.

## Ejemplos

### Ejemplo para datos no agrupados
Para los datos: 2, 3, 3, 5, 8
- Media = (2 + 3 + 3 + 5 + 8) / 5 = 4.2
- Mediana = 3
- Moda = 3

### Ejemplo para datos agrupados
Para las clases:
- 10–20, frecuencia 5
- 20–30, frecuencia 8
- 30–40, frecuencia 12
- 40–50, frecuencia 10
- 50–60, frecuencia 5

#### Tabla de datos agrupados
| Clase  | Frecuencia (fi) | Marca de clase (mi) | Frecuencia acumulada |
|-------:|----------------:|--------------------:|---------------------:|
| 10–20  | 5               | 15                  | 5                    |
| 20–30  | 8               | 25                  | 13                   |
| 30–40  | 12              | 35                  | 25                   |
| 40–50  | 10              | 45                  | 35                   |
| 50–60  | 5               | 55                  | 40                   |

#### Media agrupada
- Σ fi·mi = 5·15 + 8·25 + 12·35 + 10·45 + 5·55 = 1,420
- Σ fi = 40
- Media agrupada = 1,420 / 40 = 35.5

#### Mediana agrupada
- N = 40, N/2 = 20
- Clase mediana = 30–40 (primera clase con frecuencia acumulada ≥ 20)
- Li = 30, F_(i-1) = 13, fi = 12, A = 10
- Mediana ≈ 30 + 10 · ((20 - 13) / 12) = 35.83

#### Moda agrupada
- Clase modal = 30–40 (fm = 12)
- Clase anterior = 20–30 (f1 = 8)
- Clase siguiente = 40–50 (f2 = 10)
- Moda ≈ 30 + ((12 - 8) / ((12 - 8) + (12 - 10))) · 10 = 36.67

Estas fórmulas permiten estimar las medidas de tendencia central para datos agrupados cuando solo se conoce la frecuencia de cada intervalo.
