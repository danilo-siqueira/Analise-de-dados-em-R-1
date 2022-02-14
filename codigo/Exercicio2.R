# Exercicio 2 da 1ª Lista #

#Lendo Tabela
if(!"readxl" %in% installed.packages()) install.packages("readxl")
library(readxl)
tabela2 <- read_excel("./dados/exercicio2.xls")

# Tabela de Frequencia #

k <- nclass.Sturges(tabela2$Casas)
#summary(tabela2$Casas)
minCasas <- min(tabela2$Casas)
maxCasas <- max(tabela2$Casas)
intervalos <- seq(minCasas,maxCasas,k)

# Tabela de frequencia absoluta:
classes<-c("2-8","9-15","16-22","23-29","30-36","37-43","44-51","52-58","59-65","66-72","73-79","80-86","87-93","94-97")
casas.t <- table(cut(tabela2$Casas,breaks = intervalos,right = FALSE))
casas.t

# Tabelade frequencia relativa:
prop.table(casas.t)

#Medidas de Posiçao:
#Media
mediaExercicio2 <- mean(tabela2$Casas)

#Mediana
medianaExercicio2 <- median(tabela2$Casas)

#Moda:
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
modaExercicio2 <- getmode(tabela2$Casas)

#Medida de Dispersao:
#Desvio Padrao
dpExercicio2 <- sd(tabela2$Casas)
#Variancia
varianciaExercicio2 <- var(tabela2$Casas)

#Gráficos:
plot(tabela2$Casas,xlab = "Quarteirao", ylab = "Numero de Casas", pch = 19, col = tabela2$Casas)

#Grafico com media e mediana:
plot(tabela2$Casas,xlab = "Quarteirao", ylab = "Numero de Casas", pch = 19, col = tabela2$Casas)
abline(h = mediaExercicio2,col = "Blue",lty = 1,lwd = 2)
legend(x = "topleft", legend = c("Media", "Mediana"),col = c("Blue", "Black"), lwd = 1,lty = c(1,2),pch = c(NA,NA))
abline(h = medianaExercicio2,col = "Black",lty = 2, lwd = 2)

