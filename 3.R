library(dplyr)

FUN <- function(x) {
  x <- as.integer(x)
  div <- seq_len(abs(x))
  factors <- div[x %% div == 0L]
  factors <- list(neg = -factors, pos = factors)
  return(factors)
}

data.frame(list = FUN(600851475143)$pos) %>%
  filter(isprime(list)==1) %>% 
  max()
  
