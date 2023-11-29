########## 1 #############

#1a
v1 <- c(rep("Gold",20),rep("Silver",30),rep("Bronze",50))
print(sample(v1,10))

#1b
sample(c("success","failure"),10,replace = TRUE,prob = c(0.9,0.1))



########## 2 #############

prob=1
n=23
for(i in 1:n-1)
  prob=prob*(1-(i/365))
#print(prob)
print(1-prob)

qbirthday(0.5,365)



########## 3 #############

condt_prob <-function(pc,pr,pcgr){
  prgc <- (pr*pcgr)/pc
  return(prgc)
}
c <- 0.4
r <- 0.2
cr<- 0.85

probab <-condt_prob(c,r,cr)
print(probab)



########## 4 #############

iris

#a
head(iris)
head(iris,10)

#b
str(iris)

#c
iris$Sepal.Length
range(iris$Sepal.Length)

#d
mean(iris$Sepal.Length)

#e
median(iris$Sepal.Length)

#f
quartiles <- quantile(iris$Sepal.Length, probs = c(0.25, 0.75))
cat(quartiles)
IQR(iris$Sepal.Length)

#g
sd(iris$Sepal.Length)
var(iris$Sepal.Length)

#h
summary(iris)



########## 5 #############

vec <- c(12,12,12,13,13,13,13,14,15)

modeof<-function(vec){
  unique <-unique(vec)
  unique[which.max(tabulate(match(vec,unique)))]
}

print(modeof(vec))