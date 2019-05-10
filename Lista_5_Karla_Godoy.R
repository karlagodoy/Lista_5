# Lista 5

# Aluna: Karla Godoy

# Respostas da lista 1----

# Questão 5----

require(tidyverse)
require(magrittr)
require(ggplot2)


Empresa <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)

Meses <-c(8, 9, 4, 5, 3, 6, 8, 6, 6, 8, 5, 5, 6, 4, 4)

Setor<-  c("C", "C", "I", "I", "I", "C", "C", "I", "I", "C", "C", "I", "C", "I", "I")

Tamanho <- c("G", "M", "G", "M", "M", "P", "G", "M", "P", "M", "P", "P", "M", "M","G")

Q_5<- data.frame (Empresa, Meses, Setor, Tamanho)


#A----

class(Empresa) #numeric

class (Meses) #numeric

class (Setor) #character

class (Tamanho) #character

# B----

#Empresas do setor do Comércio 

Q5Comercio <- Q_5 %>% filter(Setor=="C")

head(Q5Comercio)

mean (Q5Comercio$Meses) #7.142857

median(Q5Comercio$Meses) #8

#Empresas do setor da Indústria

Q5Industria <- Q_5 %>% filter(Setor=="I")

mean (Q5Industria$Meses) #4.625

median(Q5Industria$Meses) #4.5

# as empresas do Comercio apresentam média de meses em crescimento maior que as empresas na  área de Industria.

# C----

# Comercio 

sd(Q5Comercio$Meses) #1.46385

# Industria

sd(Q5Industria$Meses) #1.06066

#O grupo mais homogêneo é o grupo formado pelas empresas do ramo da Industria.

# D----

summary (Q_5$Meses)

#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#  3.0     4.5     6.0     5.8     7.0     9.0 
# A medida descritiva que fornece a informação é o 1º P-  quantil (1st Qu).
# O número de meses apresentando crescimento de no máximo 4,5.


# E----

# Empresas P

Q5EmpresasP <- Q5 %>% filter(Tamanho=="P")

mean (Q5EmpresasP$Meses) #5.5

median(Q5EmpresasP$Meses) #5.5

sd(Q5EmpresasP$Meses) #0.5773503

# Empresas M

Q5EmpresasM <- Q5 %>% filter(Tamanho=="M")

mean (Q5EmpresasM$Meses) # 5.857143

median(Q5EmpresasM$Meses) #6

sd(Q5EmpresasM$Meses) #2.115701

# Empresas G

Q5EmpresasG <- Q5 %>% filter(Tamanho=="G")

mean (Q5EmpresasG$Meses) # 6

median(Q5EmpresasG$Meses) #6

sd(Q5EmpresasG$Meses) #2.309401

## VER RESPOSTA DO PROFESSOR 


#6----

Cidade <-  c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")

Investimento <- c(26, 16, 14, 10, 19, 15, 19, 16, 19, 18)

Q_6<- data.frame (Cidade, Investimento)

#A

mean(Q_6$Investimento) #17.2

#B

sd(Q_6$Investimento)# 4.184628



## Nenhuma das cidades receberá o programa, visto que nenhuma das cidades atende aos requisitos.
## Isso acontece porque todos os investimentos estão proximos da média.

#C

mean(Q_6$Investimento)- 2*sd(Q_6$Investimento) #8.830744

mean(Q_6$Investimento)+ 2*sd(Q_6$Investimento) #25.56926

## Apenas a cidade A ficará de fora. 

#7 ----

Ind<-  c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)

A <- c(55, 2, 13, 11, 23, 2, 15, 12, 14, 28, 12, 45, 19, 30, 16, 12, 7, 13, 1, 7)

B <- c(20, 7, 6, 5, 3, 25, 5, 3, 3, 10, 8, 5, 1, 35, 9, 8, 12, 2, 26)

Q_7 <- data.frame (Ind, A, B)


#A

# Estímulo A

mean (Q_7$A) #16.85

median(Q_7$A) #13

sd(Q_7$A) #13.80418

# Estímulo B

mean (B) #10.15789

median(B) #7

sd(B) #9.459053

## O estímulo B tem o tempo o menor tempo de reação, tem média 
## e mediana menor que o estímulo A, e ainda apresenta uma amostra mais homogênea. 

#B

require(ggplot2)
boxplot(A,B)

#8----

fam <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")

renda_sm <- c(12, 16, 18, 20, 28, 30, 40, 48, 50, 54)

saude_perc <- c(7.2, 7.4, 7, 6.5, 6.6, 6.7, 6, 5.6, 6, 5.5)

Q_8 <- data.frame (fam, renda_sm, saude_perc)


#A

#Renda
mean (Q_8$renda_sm) #31.6

median(Q_8$renda_sm)# 29

sd(Q_8$renda_sm)#15.42869

#Saude
mean (Q_8$saude_perc) #  6.45

median(Q_8$saude_perc) # 6.55

sd(Q_8$saude_perc) #0.6570134

#Covariancia 


#Correlação

cor.test(Q_8$renda_sm, Q_8$saude_perc)

cor(Q_8$renda_sm, Q_8$saude_perc)

#-0.9404625

#B


#9----

aluno <- c("A", "B", "C", "D", "E", "F", "G","H", "I")

P1 <- c(7.5, 8.2, 8.5, 8.7 ,8.8, 9.1 ,9.2, 9.3, 10)

P2 <- c(8.2, 8.0, 8.3, 8.5, 9.4, 9.6, 9.0, 9.3, 9.7)

Q_9<- data.frame (aluno, P1, P2)

#A 

cor.test(Q_9$P1, Q_9$P2)

#0.8301592

# Lista 2----

#Questão5----

Pesquisa <- c(1:1000)


Respostas <- c(1:620, replace=N, 621:1000, replace=S)


Pesquisa <- list(N,Sim)

# A

(((620*1)+(380*0))/1000)

# 0.62

# B

# Desvio padrão
sd(Pesquisa$Nao)
# ou
y %>% var %>% sqrt

# Questão 6----

#A

#B

#C

#D

#Questão11

#A

#B

#C


#Questão 12

#Questão 13

#A

#B

#C
