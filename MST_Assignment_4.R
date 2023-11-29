######### 1 ############

x <- c(0,1,2,3,4)
p <- c(0.41,0.37,0.16,0.05,0.01)
weighted.mean(x,p)
sum(x*p)
c(x%*%p)



######### 2 ############

funn <- function(t){
  return(t*0.1*exp(-0.1*t))
}

cat("Expected value of T , E(T) is : ")
print(integrate(funn,0,Inf))




######### 3 ############

x = 0:3
p<-c(0.1,0.2,0.2,0.5)
x1 <- sum(x*p)
print(x1*12+2*(3-x1)-3*6)



######### 4 ############

#mean is the same as the first moment 
#and variance is second_moment - first_moment^2 
#"$" is used to fetch specific variables or elements from a larger data structure

f1 <- function(t){
  return(t*0.5*exp(-abs(t)))
}
f2 <- function(t){
  return(t*t*0.5*exp(-abs(t)))
}

moment1<-integrate(f1,1,10)
moment2<-integrate(f2,1,10)

cat("The Mean is : ")
print(moment1$value)
varia <- moment2$value - moment1$value^2
cat("The Variance is : ")
print(varia)



######### 5 ############

xfunc <- function(x){
  return(0.75*(0.25^(x-1)))
} 

yfunc <- function(y){
  return(0.75*(0.25^(sqrt(y)-1)))
}

x<-3
y = x^2
proby <- yf(y)
print(proby)

x<- c(1,2,3,4,5)
y<-x^2
proby <- y*f(y)
print(sum(proby))

ExpVal <- sum(y*proby)
print(ExpVal)