#3
library("pracma")
#1
f<-function(x,y){
  {
    return(2 * (2 * x + 3 * y) / 5)
  } 
}
#i
integral2(f,0,1,0,1)
#ii
f2=function(y) f(1,y)
integral(f2,0,1)
#iii
f3=function(x) f(x,0)
integral(f3,0,1)
#iv
integral2(function(x,y){x*y*f(x,y)},0,1,0,1)

#2
f<-function(x,y){
  
  return((x+y) / 30)
  
}
x=0:3
y=0:2
#i
z=matrix( f(x,y),nrow = 4, ncol = 3)
#ii
sum(z)
#iii
marginal_g=apply(z,1,sum)
marginal_g
#iv
marginal_h=apply(z,2,sum)
#v
f(0,1)/marginal_h[2]
#vi
Ex <- sum(x * marginal_g)
Ex
Ey <- sum(y * marginal_h)
Exy <- sum(outer(x, y, function(x, y) x * y * f(x, y)))
var_x <- sum((x - Ex)^2 * marginal_g)
var_y <- sum((y - Ey)^2 * marginal_h)
cov_xy <- Exy - Ex * Ey
correlation_coefficient <- cov_xy / (sqrt(var_x) * sqrt(var_y))