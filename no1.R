#1
#Seorang penyurvei secara acak memilih orang-orang di jalan
#sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

#a.
n = 3
p = 0.20
dgeom(x=n, prob=p)

#b.
mean(rgeom(n=10000, prob=p)==3)

#c
#ditemukan pada poin a nilai eksak 0.1024
#pada poin b ditemukan nilai simulasi dengan 10000 data random
#kesimpulannya adalah nilai simulasi mendekati nilai eksak

#d
library(ggplot2)
library(dplyr)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 gagal Sebelum Sukses Pertama",
       subtitle = "Geometrik",
       x = "Kegagalan Sebelum Sukses Pertama",
       y = "Peluang")


#e
p=0.2

#mean
mean1 = 1 / p
mean1

#variance
var1 = (1 - p) / p^2
var1


