moda <- function(x) {
  u <- unique(x)
  tab <- tabulate(match(x, u))
  u[tab == max(tab)]
}

coef_var <- function(x, na.rm = FALSE) {
  (sd(x, na.rm=na.rm) / mean(x, na.rm=na.rm)) * 100
}

rango <- function(x){
  max(x) - min(x)
}

dma <- function(x){
  sum(abs(x - mean(x))) / length(x)
}

x <- c(2.07, 2.14, 2.22, 2.03, 2.21, 2.03, 2.05, 2.18, 2.09, 2.14, 2.11, 2.02)

x <- data.frame(x)
x

x <- sort(x$x)
x

## Medidas de tendencia central

media <- mean(x)
mediana <- median(x)
moda <- moda(x)

# Rango

max <- max(x)
min <- min(x)
rango <- rango(x)

# Medidas de variación

dma <- dma(x)
s2 <- var(x)
s <- sd(x)
cv <- coef_var(x)

print(paste("Media = ", media))
print(paste("Mediana = ", mediana))
print(paste("Moda = ", moda))
print(paste("Rango = ", max, "-", min, "=", rango))
print(paste("Desviación Media Absoluta = ", dma))
print(paste("Varianza = ", s2))
print(paste("Desviación estándar = ", s))
print(paste("Coeficiente de Variación = ", cv,"%"))

dotchart(x)
