harmonic <- function(x){
  length(x) / (sum(1/x))
}

x <- c(10, 6, 15, 4)
harmonic(x)