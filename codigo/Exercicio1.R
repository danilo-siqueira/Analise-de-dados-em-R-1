# Exercicio 1 da 1ª Lista #

#Lendo Tabela
if(!"readxl" %in% installed.packages()) install.packages("readxl")
library(readxl)
tabela <- read_excel("./dados/exercicio1.xls")

#Gerando Valores:
#Media
mediaExercicio1 <- mean(tabela$`Taxas de juros`)
#Mediana
medianaExercicio1 <- median(tabela$`Taxas de juros`)
#Desvio Padrao
dpExercicio1 <- sd(tabela$`Taxas de juros`)
#Variancia
varianciaExercicio1 <- var(tabela$`Taxas de juros`)
#Minima e Maxima
minimoExercicio1 <- min(tabela$`Taxas de juros`)
maximoExercicio1 <- max(tabela$`Taxas de juros`)
#Primeiro e Terceiro Quartil
q1Exercicio1 <- quantile(tabela$`Taxas de juros`,prob=c(.25))
q3Exercicio1 <- quantile(tabela$`Taxas de juros`,prob=c(.75))

#Gerando Gráficos:
#Media:
plot(tabela$`Taxas de juros`,type = "b",  main = 'Reta da media')
abline(h = mediaExercicio1)

#Mediana
plot(tabela$`Taxas de juros`,type = "b",  main = 'Reta da mediana')
abline(h = medianaExercicio1,lty = 3)

#DesvioPadrao
if(!"plotrix" %in% installed.packages()) install.packages("plotrix")
require(plotrix)
gr_dp <- barplot(tabela$`Taxas de juros`,ylim = c(0,3), col = 'green', ylab = 'Taxa de Juros', main = 'Desvio Padrao')
plotCI(x = gr_dp, y = tabela$`Taxas de juros`,uiw = dpExercicio1,liw = 0, add = TRUE, pch = NA, lwd = 2)


