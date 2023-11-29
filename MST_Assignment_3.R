############# 1 ############

p7to9 = pbinom(9,size = 12,prob = 1/6)-pbinom(6,size = 12,prob = 1/6)
print(p7to9)

#OR(dbinom = destination ; pbinom = sum)

dbinom(7,12,1/6)+dbinom(8,12,1/6)+dbinom(9,12,1/6)



############# 2 ############

mean_score <- 72
std_dev <- 15.2
percentage_above_84 <- 1 - pnorm(84, mean = mean_score, sd = std_dev)
print(percentage_above_84)



############# 3 ############

cat("Probability (no car) = ",dpois(0,5))
x <- ppois(50,50)-ppois(47,50)
cat("Probability (48 ≤ customers ≤ 50) = ",x)



############# 4 ############

dhyper(3,17,233,5)

plot

############# 5 ############
n<-31
p_wiki <- 0.447

#a 
#X is distributed as a binomial distribution

#b and c
x <- 1:31
pdf=c()
cdf=c()
for (i in x) {
  pdf[i]=dbinom(i,31,0.447)
  cdf[i]=pbinom(i,31,0.447)
}
pdf
plot(x,cdf, type = "l", xlab = "Number of Students", ylab = "Cumulative Probability", main = "CDF of X")

#d
mean_X <- n * p_wiki
variance_X <- n * p_wiki* (1 - p_wiki)
std_deviation_X <- sqrt(variance_X)

mean_X  # Mean of X
variance_X  # Variance of X
std_deviation_X  # Standard Deviation of X