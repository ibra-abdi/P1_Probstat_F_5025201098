#2
#Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2.

#a
a <- dbinom(x=4,20,0.2)
a
#Peluang terdapat 4 pasien yang sembuh = 0.2181994

#b
data <- rbinom(20,20,0.2)
hist(data,
     xlim = c(0,8))

#c
n=20 
p=0.2 
q=1-p 

#rerata teoritis
me=n*p
me

#rerata sampel
mean(data)

#variasi teoritis
va=n*p*q
va

#variasi sampel
var(data)