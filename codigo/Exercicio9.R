# Exercicio 8 da 1ª Lista #

#Lendo Tabela
library(readxl)
tabela9 <- read_excel("./dados/exercicio9.xls")

# Tabela de Frequência
minSalario9 <- min(tabela9$Salários)
maxSalario9 <- max(tabela9$Salários)
intervalos4 <- seq(minSalario9, maxSalario9 + 2, 2)
intervalos4

tabSal <- table(cut(tabela9$Salários,breaks = intervalos4,right = FALSE))
tabSal

# Histograma
hist(las = 1,tabela9$Salários,col = "black",border= "white",breaks= intervalos4,xlab= "Salarios",ylab= "Freq.(Pessoas)",main="")
