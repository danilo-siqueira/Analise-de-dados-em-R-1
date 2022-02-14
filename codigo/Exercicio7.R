# Exercicio 7 da 1ª Lista #

#Lendo Tabela
library(readxl)
tabela7 <- read_excel("./dados/exercicio7.xls")

# Gráfico de Barras:
library(ggplot2)
ggplot(tabela7,aes(x = Áreas, y = Atendimento)) + 
  geom_bar(stat = "identity") +
  coord_flip()
