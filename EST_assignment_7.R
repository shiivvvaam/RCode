########## 1 #########
a<-rt(100,99)
a
hist(a)


########## 2 #########
df <- c(2,10,25)
b<- rchisq(100,df)

hist(rchisq(100,2))
hist(rchisq(100,10))
hist(rchisq(100,25))


########## 3 #########
x <- seq(-6,6,length = 100)

pdf_df1 = dt(x,1)
pdf_df4 = dt(x,4)
pdf_df10 = dt(x,10)
pdf_df30 = dt(x,30)

plot(x,pdf_df30,type = 'l' , col='blue',lty = 1,lwd = 3,ylab = 'Density', xlab = 'x',main = 'T - Distribution')
lines(x,pdf_df1,col='purple',lty=2,lwd=2)
lines(x,pdf_df4,col = 'green',lty=3,lwd=2)
lines(x,pdf_df10,col='red',lty=4,lwd=2)



########## 4 ##########

#1
qf(0.95,10,20)

#2
area1 <- pf(1.5,10,20)
area1
area2<- 1-area1
area2

#3
qf(0.25,10,20)
qf(0.5,10,20)
qf(0.75,10,20)
qf(0.999,10,20)

#4
rand_val<-rf(100,10,20)
hist(rand_val)