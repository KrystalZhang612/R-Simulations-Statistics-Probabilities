#all possible values of sum of two dices outcomes
vals <- c(2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
#the corresponding probabilities as calculated:
probs <- c(0.015625,0.03125,0.046875,0.0625,0.078125,
           0.09375,0.109375,0.125,0.109375,0.09375,
           0.078125,0.0625,0.046875,0.03125,0.015625)
#here to calculate the X expected value
sum(vals*probs)
