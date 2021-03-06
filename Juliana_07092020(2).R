
#################FIXANDO CONTE�DO####################

#SOBRE O TIDYVERSE#

??tidyverse                             #� uma cole��o de pacotes, dentre os quais temos o ggplot, dplyr, tidyr, raedr e outros
library(tidyverse)

###DPLYR####

#dplyr � um pacote de manipula��o de dados. As principais fun��es desse pacote s�o:

select()           #seleciona colunas de tabelas
filter()           #filtra linhas dentro das colunas
arrange()          #organiza os dados
mutate()           #modifica/cria colunas
group_by()         #separa os dados no grupo que for selecionado
summarise()        #resume/agrega dados


##EXEMPLOS##

#Para exemplificar as fun��es do DPLYR, utilizaremos um pacote de dados referentes � carros
 
setwd("C:/Users/julia/OneDrive/Documentos/R")              #definindo o diret�rio que ser� utilizado

df<-read.csv("FipePrevAjustada.csv",encoding = "UTF-8")    #importando a tabela que ser� utilizada para fazer a an�lise
View(df)

install.packages("dplyr")
library(dplyr)

#M�dia de pre�o dos carros 0KM por marca

#Ser�o necess�rias tr�s fun��es:

?filter          #para filtrar os carros com 0KM
?group_by        #para agrup�-los por marca
?summarise       #para resumir a an�lise, n�o repetindo marcas iguais

df<-(filter())

MediaMarca<-df%>%filter(Ano_Modelo == 'Zero KM') %>%                          #desta forma estamos filtrando os carros com 0KM, agrupando-os por marca,resumindo os resultados
                                                                              #e guardando-os numa nova vari�vel.
  group_by(Marca)%>%summarise(mean(Pre�o))                                    #o operador pipe permite fazer essa concatena��o de dados de maneira mais direta.

View(MediaMarca)


###TIDYR###

install.packages("tidyr")
library(tidyr)

#Projetado para organiza��o de dados, de forma a estruturar uma tabela sempre com cada vari�vel em uma coluna e cada obs em uma linha.
#Para isso usa-se duas principais fun��es:

gather()          #forma novas colunas juntando seus valores 
spread()          #Espalha uma vari�vel nas colunas


####D�vidas sobre como usar o tidyr


#Tamb�m s�o fun��es bem utilizadas:

unite()           #junta duas ou mais colunas usando algum separador 
separate()        #faz o inverso de unite(), transforma uma coluna em v�rias usando um separador



###STRINGR###

library(stringr)

#Possibilita o processamento e manipula��o de strings. Algumas delas s�o:

#para exemplificar usaremos algumas fun��es mais b�sicas:

str_to_upper()   #altera para caixa alta
str_to_lower()   #altera para caixa baixa
str_length()     #retorna o numero de caracteres de cada string


str_to_upper('testando')

str_to_lower('TESTANDO ')

str_length('testando')






