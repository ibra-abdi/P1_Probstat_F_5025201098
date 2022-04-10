#3
#Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan 
#rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)


#a
x = 6
lambda = 4.5
dpois(x,lambda)

#b
set.seed(2)

babies <- data.frame('data' = rpois(365, 4.5))

babies %>% ggplot() +
  geom_histogram(aes(x = data,
                     y = stat(count / sum(count)),
                     fill = data == 6),
                 binwidth = 1,
                 color = 'black',) +
  scale_x_continuous(breaks = 0:10) + 
  labs(x = 'Kelahiran bayi per tahun',
       y = 'Proporsi',
       title = 'Simulasi 365 kelahiran dengan pois(lambda = 4.5)') +
  theme_bw()

#c
babies %>% dplyr::summarize(six_babies = sum(babies$data == 6) / n())
#hasil simulasi adalah sekitar 11.5%
#hasil nilai eksak adalah 12.8%
#nilai simulasi mendekati nilai eksak

#d
#mean
lambda

#variance
lambda

