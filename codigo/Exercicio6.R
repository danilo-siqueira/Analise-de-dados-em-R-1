# Exercicio 6 da 1ª Lista #

#Lendo Tabela
library(readxl)
tabela6 <- read_excel("./dados/exercicio6.xls")

#Diagrama de Pareto:
#Ordenando:

if(!"qcc" %in% installed.packages()) install.packages("qcc")
library(qcc)
qualidade <- (tabela6$`Nº pessoas`)
names(qualidade) <- tabela6$Qualidade
grf_pareto <- pareto.chart(qualidade, main= "Grafico de Pareto")
