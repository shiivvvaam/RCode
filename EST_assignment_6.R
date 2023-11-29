library("pracma")

########## 1 #########

f = function(x,y){
  {
  return(2*(2*x+3*y)/5)
  }
}

#1
I=integral2(f,xmin=0,xmax=1,ymin=0,ymax=1)
I$Q

#2
g_x = function(y){
  f(1,y)
}
I2 = integral(g_x,0,1)
I2

#3
h_y <- function(x){
  f(x,0)
}
I3 = integral(h_y,0,1)
I3

#4
g_xy <- function(x,y){
  x*y*f(x,y)
}
I4 = integral2(g_xy,0,1,0,1)
I4$Q


########## 2 ##########

f <- function(x,y){
  {
    return((x+y)/30)
  }
}

x <- c(0,1,2,3)
y<- c(0,1,2)

#1
M <- matrix(c(f(0,0:2),f(1,0:2),f(2,0:2),f(3,0:2)),nrow=4,ncol=3,byrow=TRUE)
M

#2
sum(M)

#3
g_x <- apply(M,1,sum)
g_x

#4
h_y <- apply(M,2,sum)
h_y

#5
M[1,2]/h_y[2]

#6
E_x = sum(x*g_x)
E_x

E_y = sum(y*h_y)
E_y

E_xy = sum(x%o%y*M)
E_xy

Var_x = sum((x-E_x)^2 * g_x)
Var_x

Var_y = sum((y-E_y)^2 * h_y)
Var_y

Cov_xy = E_xy - E_x*E_y
Cov_xy

corr_coefficient = Cov_xy / sqrt(Var_x*Var_y)
corr_coefficient