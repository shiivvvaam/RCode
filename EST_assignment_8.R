######### 1 #########

#a
data<-read.csv(file.choose())
head(data)

#b
dim(data)

#c
pop_mean <- mean(data$Wall.Thickness)
pop_mean
hist(data$Wall.Thickness,col = 'lightblue')

#d
abline(v=pop_mean , col = 'red',lty=1)


######### 2 #########

###a
v <- c()

for (i in 1:9000) {
  v[i] = mean(sample(data$Wall.Thickness,10,replace = TRUE))
}
hist(v)
abline(v=pop_mean,col='red',lty=1)

###b
par(mfrow=c(1,3)) ###used to split screen
v = c()
for (i in 1:9000) {
  v[i] = mean(sample(data$Wall.Thickness,50,replace = TRUE))
}
hist(v)
abline(v=pop_mean,col='red',lty=1)



v = c()
for (i in 1:9000) {
  v[i] = mean(sample(data$Wall.Thickness,500,replace = TRUE))
}
hist(v)
abline(v=pop_mean,col='red',lty=1)



v = c()
for (i in 1:9000) {
  v[i] = mean(sample(data$Wall.Thickness,9000,replace = TRUE))
}
hist(v)
abline(v=pop_mean,col='red',lty=1)