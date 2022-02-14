# Exercicio 8 da 1ª Lista #

#Lendo Tabela
library(readxl)
tabela8 <- read_excel("./dados/exercicio8.xls")
matriz <- data.matrix(tabela8)
vetor_8 <- as.vector(matriz)
vetor_8

# Tabela de Frequência
k3 <- nclass.Sturges(vetor_8)
minAltura <- min(vetor_8)
maxAltura <- max(vetor_8)
intervalos3 <- seq(minAltura, maxAltura + round(((maxAltura - minAltura)/k3))+0.05, (maxAltura - minAltura)/k3)
intervalos3

height.t <- table(cut(vetor_8,breaks = intervalos3,right = FALSE))
height.t

# Histograma
hist(las = 1,vetor_8,col = "black",border= "white",breaks= intervalos3,xlab= "Altura",ylab= "Freq.(Pessoas)",main="")
