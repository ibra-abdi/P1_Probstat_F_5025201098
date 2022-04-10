#6
#Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

#a
n = 100
m = 50
std = 8

data <- rnorm(100,50,8)
rata_rata <- mean(data)
x1 <- floor(mean(data))
x2 <- round(mean(data))

z_scores <- (data - mean(data) / sd(data))

plot(z_scores, type = "o", col="red")

#b
x <- rnorm(100,50,8)
hist(x,
     breaks = 50,
     main = "5025201098_Ibra_Abdi_Probstat_F_DNhistogram")

#c
var(x)