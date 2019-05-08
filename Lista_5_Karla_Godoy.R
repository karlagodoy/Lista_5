# Lista 5

# Aluna: Karla Godoy

# Respostas da lista 1----

# Questão 5----

require(tidyverse)

Empresa <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)

Meses <-c(8, 9, 4, 5, 3, 6, 8, 6, 6, 8, 5, 5, 6, 4, 4)

Setor<-  c("C", "C", "I", "I", "I", "C", "C", "I", "I", "C", "C", "I", "C", "I", "I")

Tamanho <- c("G", "M", "G", "M", "M", "P", "G", "M", "P", "M", "P", "P", "M", "M","G")

Q5<- data.frame (Empresa, Meses, Setor, Tamanho)

#A----

class(Empresa) #numeric

class (Meses) #numeric

class (Setor) #character

class (Tamanho) #character

# B----

Q5 %>% group_by(Setor) %>%
  summarise(Empresa = n())


# C----


# D----

# E----

#6----

Cidade <-  c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")

Investimento <- c("26", "16", "14", "10", "19", "15", "19", "16", "19", "18")


#7 ----

Ind<-  c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)

A <- c(55, 2, 13, 11, 23, 2, 15, 12, 14, 28, 12, 45, 19, 30, 16, 12, 7, 13, 1, 7)

B <- c(20, 7, 6, 5, 3, 25, 5, 3, 3, 10, 8, 5, 1, 35, 9, 8, 12, 2, 26)

#8----

fam <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")

renda_sm <- c(12, 16, 18, 20, 28, 30, 40, 48, 50, 54)

saude_perc <- c(7.2, 7.4, 7, 6.5, 6.6, 6.7, 6, 5.6, 6, 5.5)


#9----

aluno <- c("A", "B", "C", "D", "E", "F", "G","H", "I")

P1 <- c(7.5, 8.2, 8.5, 8.7 ,8.8, 9.1 ,9.2, 9.3, 10)

P2 <- c(8.2, 8.0, 8.3, 8.5, 9.4, 9.6, 9.0, 9.3, 9.7)
