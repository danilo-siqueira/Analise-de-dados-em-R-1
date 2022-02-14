# Exercicio 5 da 1ª Lista #

#Lendo Tabela
library(readxl)
tabela5 <- read_excel("./dados/exercicio5.xls")

# Gráfico de Barras:
library(ggplot2)
ggplot(tabela5,aes(x= Marcas,y= `Nº pessoas`)) +
  geom_bar(stat = "identity",width = 0.3)
