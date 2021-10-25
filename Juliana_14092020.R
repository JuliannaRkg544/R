
########MANIPULANDO DADOS COM DPLYR E TIDYR##################

#SOBRE O TIDYVERSE#

setwd("C:/Users/julia/OneDrive/Documentos/R")

??tidyverse                             #é uma coleção de pacotes, dentre os quais temos o ggplot, dplyr, tidyr, raedr e outros
?installed.packages()
?search()

library(tidyverse)                      #carregando pacote tidyverse, que já carrega o dplyr e o tidyr bem como vários outros


###DPLYR####

#dplyr é um pacote de manipulação de dados.
#Ele possui várias funções que podem ser divididas em várias classificações quanto ao seu uso

library(dplyr)


###TIDYR###

#Projetado para organização de dados, de forma a estruturar uma tabela 
#sempre com cada variável em uma coluna e cada obs em uma linha.

library(tidyr)



#Remodelando dados

arrange()                             #altera a ordenação dos registros
  
gather()                              #converte colunas em linhas
  
spread()                              #converte linhas em colunas
  
separate()                            #separa uma coluna em duas ou mais colunas
  
unite()                               #junta conteúdo de colunas em uma coluna

rename()                              #altera o nome da coluna


  
#Filtrando registros

filter()                            #escolhe casos com base em seus valores

distinct()                          #retorna somente os valores únicos removendo conteúdo duplicado

sample_frac()                       #gera uma amostra aleatória e retorna os registros

sample_n()                          #gera uma amostra aleatória e retorna o número das linhas

slice()                             #extrai linhas por posição

top_n()                             #seleciona as primeiras ou últimas linhas por valor de uma ou mais colunas

  

#Filtrando colunas

select()                           #escolhe variáveis com base em seus nomes



#Criar novas variáveis

mutate()                       #adiciona novas variáveis que são funções de variáveis existentes

transmute()                    #cria uma tabela nova somente com as variáveis indicadas

count()                        #Quantifica o número de linhas com a combinação única do conteúdo das variáveis indicadas ios valores para um único resumo


#COMBINANDO TABELAS

#Juntando tabelas

left_join(a, b, by = "x1")      #junta as colunas da tabela "b" na tabela "a" que correspondem às variáveis com mesmo nome ou indicadas

right_join(a, b, by = "x1")     #junta as colunas da tabela "a" na tabela "b" que correspondem às variáveis com mesmo nome ou indicadas

inner_join(a, b, by = "x1")     #cria uma tabela somente com as colunas da tabela "b" na tabela "a" que possuam correspondência. Não preenche com NA

full_join(a, b, by = "x1")      #cria uma tabela juntando a tabela "b" na tabela "a" independente de existir correspondência. Preenche com NA

  

#Filtrando registros a partir de outra tabela

semi_join(a, b, by = "x1")        #exibe os registros da tabela "a" que possuem correspondência na tabela "b"

anti_join(a, b, by = "x1")        #exibe os registros da tabela "a" que NÃO possuem correspondência na tabela "b"


#Operadores

intersect(a, b)   #somente registros que existem em ambas as tabelas

union(a, b)       #junta a tabela "a" com a tabela "b" SEM duplicações de registros

union_all(a, b)   #junta a tabela "a" com a tabela "b" COM duplicações de registros

setdiff(a, b)     #cria uma tabela somente com os registros que são diferentes

  
#Adicionando linhas e colunas

bind_rows(a, b)         #adiciona registros da tabela "b" na tabela "a"

bind_cols(a, b)         #adiciona colunas da tabela "b" na tabela "a"



###TESTANDO COMANDOS###

Dados<-read.table("Dados Meteorológicos.txt", header = T, encoding = "UTF-8", dec = ",", sep = " ")  
                                                    ##Importando a tabela para testar alguns comandos
str(Dados)

View(Dados)

Dados<-rename(Dados,  EST = X.U.FEFF.EST)           ##Alterando o nome da coluna X.U.FEFF.EST para EST

select(Dados, EST,Vm)                               ##Seleciona colunas;podemos ou não salvar essa alteração em algum objeto
Dados.2<-select(Dados, Tmax, Tmin)
str(Dados.2)

filter(Dados, Ano == 1998 & Prec == 0.0)                                      ##Filtra o data.frame pelas observações, pelas linhas

Dados.2<-mutate (Dados.2, Tmin2=Tmin*2, Tmax2=Tmax*2)                         ## Cria novas colunas numa base de dados e retorna tal base acrescida da nova coluna

transmute(Dados.2, Tmaxquad=sqrt(Tmax))                                       ##Cria novas colunas, retornando apenas a variável criada

count(Dados.2, wt = Tmin2>Tmax, name = "TminMax")                             ##Conta os valores unicos que existem numa variável 
                                                                               #onde o parâmetro wt é usado para dizermos para o R o que queremos que ele conte

summarise(Dados, mean(Tmax))

?summarise()  
                  

library(magrittr)                             ##É uma outra biblioteca do tidyverse, foi carregada para poder usar o operador pipe

str(Dados)

Dados %>%
  select(Ano,Tmax) %>% 
  filter(Tmax>30.00) %>% 
  distinct(Ano , .keep_all = T)               ##Selecionando colunas, filtrando a informação que se quer e DISTINGUINDO-A por ano
                                               #assim o resultado não apresentará anos repetidos.
  ?distinct()                                  # E o parâmetro .keep_all serve para exibir todas colunas não apenas as que passaram pelo distinct 
 


#Dados.3<-Dados %>% 
 # spread(key = "Mês", value = "Dia") %>% 
 #distinct(Dia)

#Dados.3<-Dados%>%         
 #gather(key = "Ano", value = "Dia")           ##Duvidas em relação aos parâmetros das funções gather e spread

str(Dados.3)


  
Dados<-separate(Dados, Ins ,c("int","dec") , remove = F, fill = "right")                   ##Separando a coluna Ins emoutras duas. O parâmetro remove serve para dizer se será ou não exibido a coluna que foi dividida(nesse caso Ins)
tail(Dados)                                                                                 #o parâmetro fill = "right" serve para que os valores nulos sejam preenchidos por Nem ser gerado um aviso.

str(Dados)
?separate

Dados<-unite(Dados, NIns, int,dec, sep = ",",na.rm = T)          #Serve para unir colunas, onde o parâmetro opcional sep é usado para separar as colunas unidas com algum sinal
                                                                 #o parâmetro na.rm = T é usado para que os valores faltantes das colunas unidas sejam removidos   


bind_rows(Dados.2, Dados.3)                                      ##Une tabelas ou data frames através de suas linhas


str(Dados.2)

arrange(Dados.2, desc(Tmax))                           ##reordena linhas de uma data frame,nesse caso foi reordenado por ordem decrescente da coluna Tmax


sample_n(Dados.2, 10)                                  ##gera amostras aleatórias de uma base de dados



?slice

slice(Dados, 4)                                       ##seleciona observações numa base de dados


top_n(Dados.2, 4)                                                ## não é muito mais utilizada, atualmente seu uso foi substituída pelas funções slice_min() e slice_max(), mas ainda pode-se usá-la
                                                                 ##seleciona as primeiras ou últimas observações de uma tabela
str(Dados.2)
str(Dados.3)

Dados.3<-select(Dados, Tmax, Tmin)

Dados.2<-select(Dados.2, Tmax, Tmin)
union(Dados.2,Dados.3)                                   ##funciona como o rbind, mas para que seja executado precisa ter a mesma quantidade de variáveis com mesmo nome e mesmo tipo

str(Dados.2)
str(Dados.3)

?union()                                        


intersect(Dados.3, Dados.2)                             ##fornece os valores que as duas tabelas tem de igual, mas para isso os parametros tb tem de ser do mesmo tipo e tamanho

setdiff(Dados, Dados.3)                                 ##fornece uma tabela com os valores diferentes, tb prescisando de parâmetros do mesmo tipo e tamanho


##as funções joins são usadas para cruzar dados de diferentes tabelas

Dados.3b<- select(Dados,Ano)

Dados.3b<-unite(Dados.2, Dados.3b)
str(Dados.3b)
view(Dados.3b)

Dados.3b<-bind_cols(Dados.3b, Dados.2)
str(Dados.3b)

Dados.3b %>% inner_join(Dados.2)                       ## juntando as tabelas obteve-se uma nova tabela, onde as linhas são aquelas em comum as duas tabelas, onde as chaves coincidem 
                                                        # essa é a função do inner_join             

?inner_join()


Dados.3b%>%right_join(Dados.2)



##FALTA PESQUISAR MELHOR SOBRE O INNER JOIN E GATHER E SPREAD





