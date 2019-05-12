# Lista 5

# Aluna: Karla Godoy

# Respostas da lista 1----

# Questao 5----

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

#Empresas do setor do Comercio 

Q5Comercio <- Q_5 %>% filter(Setor=="C")

head(Q5Comercio)

mean (Q5Comercio$Meses) #7.142857

median(Q5Comercio$Meses) #8

#Empresas do setor da Industria

Q5Industria <- Q_5 %>% filter(Setor=="I")

mean (Q5Industria$Meses) #4.625

median(Q5Industria$Meses) #4.5

# as empresas do Comercio apresentam media de meses em crescimento maior que as empresas na  area de Industria.

# C----

# Comercio 

sd(Q5Comercio$Meses) #1.46385

# Industria

sd(Q5Industria$Meses) #1.06066

#O grupo mais homogeneo Ã© o grupo formado pelas empresas do ramo da Industria.

# D----

summary (Q_5$Meses)

#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#  3.0     4.5     6.0     5.8     7.0     9.0 
# A medida descritiva que fornece a informacao e o 1 P-  quantil (1st Qu).
# O numero de meses apresentando crescimento de no maximo 4,5.


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

## A partir dos resultados obtidos conclui-se que não parece
#haver relação significativa entre o tamanho da empresa e o tempo de meses
#com crescimento. Os tempos médios e medianos são bastante
#semelhantes nos 3 grupos.

#Questao6----

Cidade <-  c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")

Investimento <- c(26, 16, 14, 10, 19, 15, 19, 16, 19, 18)

Q_6<- data.frame (Cidade, Investimento)

#A

mean(Q_6$Investimento) #17.2

#B

sd(Q_6$Investimento)# 4.184628



## Nenhuma das cidades receberÃ¡ o programa, visto que nenhuma das cidades atende aos requisitos, dado que as codificações obtidas
## nas cidades são superiores a 8,83.
## Isso acontece porque todos os investimentos estÃ£o proximos da mÃ©dia.

#C

mean(Q_6$Investimento)- 2*sd(Q_6$Investimento) #8.830744

mean(Q_6$Investimento)+ 2*sd(Q_6$Investimento) #25.56926

## Da relaçãoo das cidades, apenas a cidade, cujo investimento vale 26, não
## contribuirá para o cálculo do investimento básico. Com a retirada da cidade A percebe-se que o investimento 
## básico é menor que a média de investimentos realizados pelas  cidades remanecentes. Isso acontece porque a cidade A
## tem um investimento muito superior e sua retirada faz com que a média caia . 


# Questao7 ----

Ind<-  c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)

A <- c(55, 2, 13, 11, 23, 2, 15, 12, 14, 28, 12, 45, 19, 30, 16, 12, 7, 13, 1, 7)

B <- c(20, 7, 6, 5, 3, 25, 5, 3, 3, 10, 8, 5, 1, 35, 9, 8, 12, 2, 26, NA)

Q_7 <- data.frame (A, B)


#A

# Estimulo A

mean (Q_7$A) #16.85

median(Q_7$A) #13

var(Q_7$A) # 190.5553

sd(Q_7$A) #13.80418

# Estimulo B

mean (B) #10.15789

median(B) #7

var(B) # 89.47368

sd(B) #9.459053

## O estimulo B tem o tempo o menor tempo de reacao, tem media 
## e mediana menor que o estimulo A, e ainda apresenta uma amostra mais homogenea. 

#B

require(ggplot2)
boxplot(Q_7)


#Questao8----

fam <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")

renda_sm <- c(12, 16, 18, 20, 28, 30, 40, 48, 50, 54)

saude_perc <- c(7.2, 7.4, 7, 6.5, 6.6, 6.7, 6, 5.6, 6, 5.5)

Q_8 <- data.frame (renda_sm, saude_perc)


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

cov(Q_8) #  -9.533333 

#Correlacao

cor.test(Q_8$renda_sm, Q_8$saude_perc)

#-0.9404625

#B

## Pelos valores calculados, especialmente a covariância e o coeficiente de
## correlação linear, conclui-se que as duas variáveis têm associação negativa
## e forte. Dessa foma, ao passo em que  a renda em salários mínimos aumenta, o
## percentual de gasto com saúde diminui. 


#Questao 9----

aluno <- c("A", "B", "C", "D", "E", "F", "G","H", "I")

P1 <- c(7.5, 8.2, 8.5, 8.7 ,8.8, 9.1 ,9.2, 9.3, 10)

P2 <- c(8.2, 8.0, 8.3, 8.5, 9.4, 9.6, 9.0, 9.3, 9.7)

Q_9<- data.frame (aluno, P1, P2)

#A 

cor.test(Q_9$P1, Q_9$P2)

#0.8301592

#B 

## Conforme observado com o coeficiente de correlação linear de Pearson, 
## há uma relação linear positiva forte entre a nota na P1 e a nota na P2.


# Lista 2----

# Questao5----

# 1000 eleitores 
# 620 jamais votariam no candidato (sucesso=1)
# 380 não responderam ou votariam no candidato (fracasso=0)

votos <- rep (c (1,0), times= c(620,380))

# A

mean(votos)

# 0.62

# B

sd(votos)

# 0.4856293

#C

t.test(votos)

# 0,62
## Considerando^pnossa estimativa pontual igual a 0,62 e o coeficiente
## de confiança de 95%, existe 95% de confiança de que o intervalo 
## calculado apresenta o valor da média populacional.


# Questao 6----

#A

((1.96^2)*0.5*(1-0.5))/(0.05^2)

#384.16

#B

((1.96^2)*0.5*(1-0.5))/(0.02^2)

#2401

#C

((1.96/0.02)^2)*0.1875

# 1801. A amostra seria reduzida em 600.

#D
# 564 votaram no candidato.(sucesso=1)
#1837 votaram não votaram em outros.(fracasso=0)

votos_Q6 <- rep (c (1,0), times= c(524,1837))

mean(votos_Q6)
#0.2219399

sd(votos_Q6)

#0.4156389

Oy<- (0.4156389/sqrt(2401))

(mean(votos_Q6)- (Oy*2)) #0.204975

(mean(votos_Q6)+(Oy*2)) #0.2389047

#[0.204975-0.2389047] existe 95% de confiança de que o intervalo calculado possui a média populacional.

# Questao11

#A 
# H0: Não há associação entre a ideologia da legenda partidária e o posicionamento 
# do parlamentar quanto a descrimininalização das drogas.
# H1: Háassociação entre a ideologia da legenda partidária e o posicionamento 
# do parlamentar quanto a descrimininalização das drogas.

#B

# Erro tipo 1 e Erro tipo 2 que nesse caso o erro de tipo I seria rejeitar a hipótese de que não há associação entre ideologia da legenda partidária
# e o posicionamento do parlamentar quanto a descriminalização das drogas, quando, na verdade, não há associação. 
# O erro de tipo II pode seria aceitar que não há associação entre a ideologia partido e o posicionamento do parlamentar quanto a descriminalização 
# das drogas,quando, na verdade, há assossiação.

#C

favorável <- c(450,150)

contrario <- c(100,300)

esquerda <- c(450,100)

centro_direita <- c(150,300)

tabela_Q11 <- data.frame(esquerda,centro_direita,row.names = c("favoravel", "contrario"))

chisq.test(tabela_Q11, correct= FALSE)

# Para sustentar a afirmação de que há associação entre as duas variáveiscategóricas do estudo, realizamos o teste Qhi-quadrado. 
# Neste caso o Quadrado é 242.42,Para df=  1 e p-valor igual a 0,05, temos x²= 3,481 e  que 3,841<242,42. 
# Desta forma podemos rejeitar a hipótese nula.

# Questao 12

Year_Q12 <- c(1964,1966,1968,1970,1972,1974,1976,1978,1980,1982,1984,1986,1988,1990,1992,1994,1996,1998,2000,2002,2004,2006)

Senate <- c(85,88,71,77, 74,85,64,60,55,93,90,75,85,96,83,92,91,90,79,86,96,79)

House <- c(87,88,97,85,94,88,96,94,91,90,95,98,98,96,88,90,94,98,98,96,98,94)

Q_12<- data.frame(Year_Q12,Senate, House)

Antes<- Q_12 %>% filter(Year_Q12 < 1974)

Depois <- Q_12 %>% filter( 1974<=Year_Q12)

# Teste T Senado

t.test(Antes$Senate,Depois$Senate)

# -0.74516

# Teste T Camara

t.test(Antes$House,Depois$House)

#-1.6622

# Os dois testes tiveram P- valor maior que 0,05. Desta forma, não  podemos rejeitar a hipótese nula.

# Questao 13

year <- c(1876, 1880,1884,1888,1892,1896,1900,1904,1908,1912,1916,1920,1924,1928,1932)

growth <- c(5.11,3.879,1.589,-5.553, 2.763, -10.024,-1.425,-2.421,-6.281,4.164,2.229,-11.463,-3.872,4.623,-14.586)

vote <- c(48.516,50.22,49.846,50.414,48.268,47.76,53.171,60.006,54.483,54.708,51.682,36.148,58.263,58.756,40.851)

Questao_13 <- data.frame (year, growth, vote)

#A
# H0: Não há correlação entre o percentual de variação do PIB e o percentual 
# de votos recebidos pelo candidato do partido incumbente.
# H1: Há correlação entre o percentual de variação do PIB e o percentual de 
# votos recebidos pelo candidato do partido incumbente

#B
cor.test(Questao_13$growth,Questao_13$vote)

# data:  Questao_13$growth and Questao_13$vote
# t = 2.2546, df = 13, p-value = 0.04205
# alternative hypothesis: true correlation is not equal to 0
# 95 percent confidence interval:
# 0.02461898 0.81980079
# sample estimates:
# cor 
# 0.5301953 
# podemos rejeitar a hipótese nula ao pvalorde 0,05 
# e assim concluir que mesmo no período mais restrito já era possívelidentificar correlação entre as variáveis.

#C

# Comparando os resultados obtidos, é possível verificar que o aumento no número 
# de registros na série histórica permitiu rejeitar a hipótese nula com menor pvalor. 
