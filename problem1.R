#simulation on the first spin is a 4 

sim1 <- function(tot = 17, x1=4, nreps = 1000){
  #arrays of second and third spin values
  x2 = sample(0:13, nreps, replace = TRUE)
  x3 = sample(0:13, nreps, replace = TRUE)
  
  #total winning 
  x = x1 + x2 + x3
  
  #add up the number of time x == tot 
  sum(x == tot) / nreps 
  
}

print(sim1(17,4,1000))


#simulation on the first spin is a 5 

sim2 <- function(tot = 17, x1=5, nreps = 1000){
  #arrays of second and third spin values
  x2 = sample(0:12, nreps, replace = TRUE)
  x3 = sample(0:12, nreps, replace = TRUE)
  
  #total winning 
  x = x1 + x2 + x3
  
  #add up the number of time x == tot 
  sum(x == tot) / nreps 
  
}

print(sim2(17,5,1000))


