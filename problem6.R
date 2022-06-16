#since var(x) = e(x^2) - e(x)^2
#for L1
L1vals <- c(0,1,2)
L1probs <- c(0.5,0.4,0.1)
#E[X^2] for L1
L1SquareEX <- sum(L1vals^2*L1probs)
#(E[X))^2 for L1
L1EXSquare <- (sum(L1vals * L1probs))^2
#for L2
L2vals <-c(0,1,2,3,4)
L2probs <-c(0.292,0.4096,0.2312,0.0608,0.0064)
#E[X^2] for L2
L2SquareEX <- sum(L2vals^2*L2probs)
#(E[X])^2 for L2
L2EXSquare <- (sum(L2vals * L2probs)) ^2
#var[L1]
varL1 <- L1SquareEX - L1EXSquare
#var[L2]
varL2 <- L2SquareEX - L2EXSquare
#since var(x-y) = e((x-y)12) - e(x-y)12


#since var(x-y) = e((x-y)^2) - e(x-y)12

#var(L1-L2) = EL(L1-L2)^2] - (E[L1-L27) ^2
#for EL(L1-L2)^2]
MinusVals <- c(-2,-1,0,1,2)
MinusProbs <- c(0.0884,0.3648,0.4872,0.0576,0.002)
MinusSquareEX <- sum(MinusVals^2*MinusProbs)
#for (E[L1-L2])^2
MinusEXSquare <- (sum(MinusVals *MinusProbs))^2

print(varL1+varL2)
print(MinusSquareEX-MinusEXSquare)
#difference
print (MinusSquareEX-MinusEXSquare-varL1-varL2)
