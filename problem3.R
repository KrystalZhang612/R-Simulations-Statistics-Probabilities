simulateFunction <- function(nreps) {
  num_two_acess <- 0 
  num_four_diamonds <- 0
  for (i in 1: nreps){
    DeckOfCards <- sample(1:52,5, replace = FALSE)
    if (length(intersect(DeckOfCards, 1:4)) == 2){
      #increment # of two acess 
      num_two_acess <- num_two_acess + 1 
    }
    # for 13 diamonds:
    if (length(intersect(DeckOfCards, 5:17)) == 4){
      num_four_diamonds <- num_four_diamonds + 1
      #increment # of four diamonds 
      }
  }
  cat("P(two acess) = ", num_two_acess / nreps , "\n")
  cat("P(four diamonds) = ", num_four_diamonds/nreps, "\n")
  
}
simulateFunction(10000)