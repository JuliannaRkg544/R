
#################FIXANDO CONTEÚDO####################

#SOBRE O TIDYVERSE#

??tidyverse                             #é uma coleção de pacotes, dentre os quais temos o ggplot, dplyr, tidyr, raedr e outros
library(tidyverse)

###DPLYR####

#dplyr é um pacote de manipulação de dados. As principais funções desse pacote são:

select()           #seleciona colunas de tabelas
filter()           #filtra linhas dentro das colunas
arrange()          #organiza os dados
mutate()           #modifica/cria colunas
group_by()         #separa os dados no grupo que for selecionado
summarise()        #resume/agrega dados


##EXEMPLOS##

#Para exemplificar as funções do DPLYR, utilizaremos um pacote de dados referentes à carros
 
setwd("C:/Users/julia/OneDrive/Documentos/R")              #definindo o diretório que será utilizado

df<-read.csv("FipePrevAjustada.csv",encoding = "UTF-8")    #importando a tabela que será utilizada para fazer a análise
View(df)

install.packages("dplyr")
library(dplyr)

#Média de preço dos carros 0KM por marca

#Serão necessárias três funções:

?filter          #para filtrar os carros com 0KM
?group_by        #para agrupá-los por marca
?summarise       #para resumir a análise, não repetindo marcas iguais

df<-(filter())

MediaMarca<-df%>%filter(Ano_Modelo == 'Zero KM') %>%                          #desta forma estamos filtrando os carros com 0KM, agrupando-os por marca,resumindo os resultados
                                                                              #e guardando-os numa nova variável.
  group_by(Marca)%>%summarise(mean(Preço))                                    #o operador pipe permite fazer essa concatenação de dados de maneira mais direta.

View(MediaMarca)


###TIDYR###

install.packages("tidyr")
library(tidyr)

#Projetado para organização de dados, de forma a estruturar uma tabela sempre com cada variável em uma coluna e cada obs em uma linha.
#Para isso usa-se duas principais funções:

gather()          #forma novas colunas juntando seus valores 
spread()          #Espalha uma variável nas colunas


####Dúvidas sobre como usar o tidyr


#Também são funções bem utilizadas:

unite()           #junta duas ou mais colunas usando algum separador 
separate()        #faz o inverso de unite(), transforma uma coluna em várias usando um separador



###STRINGR###

library(stringr)

#Possibilita o processamento e manipulação de strings. Algumas delas são:

#para exemplificar usaremos algumas funções mais básicas:

str_to_upper()   #altera para caixa alta
str_to_lower()   #altera para caixa baixa
str_length()     #retorna o numero de caracteres de cada string


str_to_upper('testando')

str_to_lower('TESTANDO ')

str_length('testando')






