
########MANIPULANDO DADOS COM DPLYR E TIDYR##################

#SOBRE O TIDYVERSE#

setwd("C:/Users/julia/OneDrive/Documentos/R")

??tidyverse                             #� uma cole��o de pacotes, dentre os quais temos o ggplot, dplyr, tidyr, raedr e outros
?installed.packages()
?search()

library(tidyverse)                      #carregando pacote tidyverse, que j� carrega o dplyr e o tidyr bem como v�rios outros


###DPLYR####

#dplyr � um pacote de manipula��o de dados.
#Ele possui v�rias fun��es que podem ser divididas em v�rias classifica��es quanto ao seu uso

library(dplyr)


###TIDYR###

#Projetado para organiza��o de dados, de forma a estruturar uma tabela 
#sempre com cada vari�vel em uma coluna e cada obs em uma linha.

library(tidyr)



#Remodelando dados

arrange()                             #altera a ordena��o dos registros
  
gather()                              #converte colunas em linhas
  
spread()                              #converte linhas em colunas
  
separate()                            #separa uma coluna em duas ou mais colunas
  
unite()                               #junta conte�do de colunas em uma coluna

rename()                              #altera o nome da coluna


  
#Filtrando registros

filter()                            #escolhe casos com base em seus valores

distinct()                          #retorna somente os valores �nicos removendo conte�do duplicado

sample_frac()                       #gera uma amostra aleat�ria e retorna os registros

sample_n()                          #gera uma amostra aleat�ria e retorna o n�mero das linhas

slice()                             #extrai linhas por posi��o

top_n()                             #seleciona as primeiras ou �ltimas linhas por valor de uma ou mais colunas

  

#Filtrando colunas

select()                           #escolhe vari�veis com base em seus nomes



#Criar novas vari�veis

mutate()                       #adiciona novas vari�veis que s�o fun��es de vari�veis existentes

transmute()                    #cria uma tabela nova somente com as vari�veis indicadas

count()                        #Quantifica o n�mero de linhas com a combina��o �nica do conte�do das vari�veis indicadas ios valores para um �nico resumo


#COMBINANDO TABELAS

#Juntando tabelas

left_join(a, b, by = "x1")      #junta as colunas da tabela "b" na tabela "a" que correspondem �s vari�veis com mesmo nome ou indicadas

right_join(a, b, by = "x1")     #junta as colunas da tabela "a" na tabela "b" que correspondem �s vari�veis com mesmo nome ou indicadas

inner_join(a, b, by = "x1")     #cria uma tabela somente com as colunas da tabela "b" na tabela "a" que possuam correspond�ncia. N�o preenche com NA

full_join(a, b, by = "x1")      #cria uma tabela juntando a tabela "b" na tabela "a" independente de existir correspond�ncia. Preenche com NA

  

#Filtrando registros a partir de outra tabela

semi_join(a, b, by = "x1")        #exibe os registros da tabela "a" que possuem correspond�ncia na tabela "b"

anti_join(a, b, by = "x1")        #exibe os registros da tabela "a" que N�O possuem correspond�ncia na tabela "b"


#Operadores

intersect(a, b)   #somente registros que existem em ambas as tabelas

union(a, b)       #junta a tabela "a" com a tabela "b" SEM duplica��es de registros

union_all(a, b)   #junta a tabela "a" com a tabela "b" COM duplica��es de registros

setdiff(a, b)     #cria uma tabela somente com os registros que s�o diferentes

  
#Adicionando linhas e colunas

bind_rows(a, b)         #adiciona registros da tabela "b" na tabela "a"

bind_cols(a, b)         #adiciona colunas da tabela "b" na tabela "a"



###TESTANDO COMANDOS###

Dados<-read.table("Dados Meteorol�gicos.txt", header = T, encoding = "UTF-8", dec = ",", sep = " ")  
                                                    ##Importando a tabela para testar alguns comandos
str(Dados)

View(Dados)

Dados<-rename(Dados,  EST = X.U.FEFF.EST)           ##Alterando o nome da coluna X.U.FEFF.EST para EST

select(Dados, EST,Vm)                               ##Seleciona colunas;podemos ou n�o salvar essa altera��o em algum objeto
Dados.2<-select(Dados, Tmax, Tmin)
str(Dados.2)

filter(Dados, Ano == 1998 & Prec == 0.0)                                      ##Filtra o data.frame pelas observa��es, pelas linhas

Dados.2<-mutate (Dados.2, Tmin2=Tmin*2, Tmax2=Tmax*2)                         ## Cria novas colunas numa base de dados e retorna tal base acrescida da nova coluna

transmute(Dados.2, Tmaxquad=sqrt(Tmax))                                       ##Cria novas colunas, retornando apenas a vari�vel criada

count(Dados.2, wt = Tmin2>Tmax, name = "TminMax")                             ##Conta os valores unicos que existem numa vari�vel 
                                                                               #onde o par�metro wt � usado para dizermos para o R o que queremos que ele conte

summarise(Dados, mean(Tmax))

?summarise()  
                  

library(magrittr)                             ##� uma outra biblioteca do tidyverse, foi carregada para poder usar o operador pipe

str(Dados)

Dados %>%
  select(Ano,Tmax) %>% 
  filter(Tmax>30.00) %>% 
  distinct(Ano , .keep_all = T)               ##Selecionando colunas, filtrando a informa��o que se quer e DISTINGUINDO-A por ano
                                               #assim o resultado n�o apresentar� anos repetidos.
  ?distinct()                                  # E o par�metro .keep_all serve para exibir todas colunas n�o apenas as que passaram pelo distinct 
 


#Dados.3<-Dados %>% 
 # spread(key = "M�s", value = "Dia") %>% 
 #distinct(Dia)

#Dados.3<-Dados%>%         
 #gather(key = "Ano", value = "Dia")           ##Duvidas em rela��o aos par�metros das fun��es gather e spread

str(Dados.3)


  
Dados<-separate(Dados, Ins ,c("int","dec") , remove = F, fill = "right")                   ##Separando a coluna Ins emoutras duas. O par�metro remove serve para dizer se ser� ou n�o exibido a coluna que foi dividida(nesse caso Ins)
tail(Dados)                                                                                 #o par�metro fill = "right" serve para que os valores nulos sejam preenchidos por Nem ser gerado um aviso.

str(Dados)
?separate

Dados<-unite(Dados, NIns, int,dec, sep = ",",na.rm = T)          #Serve para unir colunas, onde o par�metro opcional sep � usado para separar as colunas unidas com algum sinal
                                                                 #o par�metro na.rm = T � usado para que os valores faltantes das colunas unidas sejam removidos   


bind_rows(Dados.2, Dados.3)                                      ##Une tabelas ou data frames atrav�s de suas linhas


str(Dados.2)

arrange(Dados.2, desc(Tmax))                           ##reordena linhas de uma data frame,nesse caso foi reordenado por ordem decrescente da coluna Tmax


sample_n(Dados.2, 10)                                  ##gera amostras aleat�rias de uma base de dados



?slice

slice(Dados, 4)                                       ##seleciona observa��es numa base de dados


top_n(Dados.2, 4)                                                ## n�o � muito mais utilizada, atualmente seu uso foi substitu�da pelas fun��es slice_min() e slice_max(), mas ainda pode-se us�-la
                                                                 ##seleciona as primeiras ou �ltimas observa��es de uma tabela
str(Dados.2)
str(Dados.3)

Dados.3<-select(Dados, Tmax, Tmin)

Dados.2<-select(Dados.2, Tmax, Tmin)
union(Dados.2,Dados.3)                                   ##funciona como o rbind, mas para que seja executado precisa ter a mesma quantidade de vari�veis com mesmo nome e mesmo tipo

str(Dados.2)
str(Dados.3)

?union()                                        


intersect(Dados.3, Dados.2)                             ##fornece os valores que as duas tabelas tem de igual, mas para isso os parametros tb tem de ser do mesmo tipo e tamanho

setdiff(Dados, Dados.3)                                 ##fornece uma tabela com os valores diferentes, tb prescisando de par�metros do mesmo tipo e tamanho


##as fun��es joins s�o usadas para cruzar dados de diferentes tabelas

Dados.3b<- select(Dados,Ano)

Dados.3b<-unite(Dados.2, Dados.3b)
str(Dados.3b)
view(Dados.3b)

Dados.3b<-bind_cols(Dados.3b, Dados.2)
str(Dados.3b)

Dados.3b %>% inner_join(Dados.2)                       ## juntando as tabelas obteve-se uma nova tabela, onde as linhas s�o aquelas em comum as duas tabelas, onde as chaves coincidem 
                                                        # essa � a fun��o do inner_join             

?inner_join()


Dados.3b%>%right_join(Dados.2)



##FALTA PESQUISAR MELHOR SOBRE O INNER JOIN E GATHER E SPREAD





