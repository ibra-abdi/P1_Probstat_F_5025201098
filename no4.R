#4
#Diketahui nilai x = 2 dan v = 10.Tentukan:

#a
x = 2
df = 10
dchisq(x , df)

#b
p <- rchisq(100,df)

hist(p,
     freq = FALSE,
     xlim = c(0,30),
     ylim = c(0,0.2),
     main = "Histogram Chisquare")

#c
#mean
mean1 = df
mean1

#variance
var1 = 2*df
var1

