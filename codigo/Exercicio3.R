# Exercicio 3 da 1ª Lista #

#Lendo Tabela
if(!"readxl" %in% installed.packages()) install.packages("readxl")
library(readxl)
tabela3 <- read_excel("./dados/exercicio3.xlsx")

vetor <- NULL
for(i in 1:length(tabela3$`Numero de Filhos`))
  vetor <- c(vetor,rep(tabela3$`Numero de Filhos`[i],tabela3$Familias[i]))
vetor
#Mediana
medianaExercicio3 <- median(vetor,na.rm = TRUE)

#Moda:
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
modaExercicio3 <- getmode(vetor)


#Grafico:
if(!"ggplot2" %in% installed.packages()) install.packages("ggplot2")
library(ggplot2)
ggplot(tabela3,aes(x= tabela3$`Numero de Filhos`,y=tabela3$Familias),) + geom_bar(stat= "identity",width= 0.2)
barplot(tabela3,ylim = c(0,40))

        