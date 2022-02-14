# Exercicio 4 da 1ª Lista #

#Lendo Tabela
if(!"readxl" %in% installed.packages()) install.packages("readxl")
library(readxl)
tabela4 <- read_excel("./dados/exercicio4.xls")

# Distribuiçao de Frequencias:
k2 <- nclass.Sturges(tabela4$Salários)
minSalario <- min(tabela4$Salários)
maxSalario <- max(tabela4$Salários)
intervalos2 <- seq(minSalario,maxSalario + round(((maxSalario - minSalario)/k2)),round(((maxSalario - minSalario)/k2)))
intervalos2

salario.t <- table(cut(tabela4$Salários,breaks = intervalos2,right = FALSE))
salario.t

# Histograma:
hist(las = 1,tabela4$Salários,col = "black",border= "white",breaks= intervalos2,xlab= "Salario",ylab= "Freq.(Pessoas)",main="")

