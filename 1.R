question1 <- function(n){
  input = 1:(n-1)
  multiple_of_3 = (input %% 3) == 0
  multiple_of_5 = (input %% 5) == 0
  three <- input[multiple_of_3]
  five <-  input[multiple_of_5]
  sum(unique(union(three, five)))
}

question1(1000)
