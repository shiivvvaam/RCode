#########1#########
#a
1-punif(45,0,60)

#b
punif(30,0,60) - punif(20,0,60)


#########2#########

#a
dexp(3,1/2)

#b
x = seq(0,5,0.1)
y = dexp(x,1/2)
plot(x,y,label = 'exp')

#c
pexp(3,1/2)

#d
x = seq(0,5,0.1)
y = pexp(x,1/2)
plot(x,y,label = 'exp')

#e
x = rexp(1000,1/2)
plot(x,t='l',col = 'gold')


#########3#########

#a
1-pgamma(1,2,1/3)

#b
qgamma(0.70,2,1/3)