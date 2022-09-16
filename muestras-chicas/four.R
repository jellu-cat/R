x <- data.frame (
  precio = c(200, 170, 135, 100),
  vendidos = c(12, 17, 24, 13)     
)

weighted.mean(x$precio,x$vendidos)
