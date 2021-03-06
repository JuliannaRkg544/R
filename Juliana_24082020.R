

#########TESTANDO COMANDOS EM R PT-2##########


R.version                          # Fornece informa��es sobre a vers�o do R utlizado

version                            # Tamb�m informa sobre a vers�o 

run(CTRL+R)                        # Executa uma linha de comando por vez



#COMANDOS DE EXECU��O NO RSTUDIO#

source(CTRL+SHIFT+S)                # Executa todo o script sem gerar retorno no console

source with echo (CTRL+SHIFT+ENTER) # Executa o script gerando retorno no console

run(CTRL+ENTER)                     # Executa uma linha de comando por vez

save(CTRL+S)                        # Salva um script


#FUN��ES#


raiz.quadrada <- sqrt(16)           # Fun��o para calcular raiz quadrada

round(5.3499999, 2)                 # Fun��o para arredondamento

round(digits = 2, x = 5.3499999)    # Uma outra forma de usar fun��o, explicitando o nome dos par�metros

?round                              # Para descobrir a utilidade da fun��o

x <- 3.141593                       # Um exemplo de informar objetos nas fun��es
round(x, 3)

ceiling(x)                          # Arredonda o par�metro para o inteiro imediato maior que ele 

floor(x)                            # Arredonda o par�metro para o inteiro imediato menor que ele

sum(2,50)                           # Soma de valores

mean(10,10,10)                      # M�dia

var()                               # Vari�ncia, tem como argumentos um vetor, matriz ou data frame
 
saldos <- c(-10, 25, 41.15, 19)     # Um exemplo de vari�ncia
var(saldos)

median(9,4,5,3,12)                  #Fornece a  Mediana de uma amostra

summary()                           # Fornece um resumo estat�stico descritivo para vari�veis num�ricas

quantile()                          # fun��o quantis



#PACOTES#

install.packages("dplyr")           # Instala um famoso pacote de manipula��o de dados

library(dplyr)                      # Carrega o pocote instalado

search()                            # Exibe os pacotes de carregados

install.packages ('tidyverse')

library(tidyverse)



#EXERC�CIOS#

#A principal diferen�a entre console e script � que o c�gigo escrito em um script 
#pode ser salvo e utilizado depois (ou compartilhado), o que n�o ocorre quando executado no console

?dplyr             # a documenta��o n�o � emcontrada

??dplyr            # � aberto uma aba de resultados de pesquisa sobre o pacote dplyr
                   #que � um pacote contendo v�rias fun��es que ajudam a organizar data.frames

?rnorm()           #� uma fun��o que gera dados aleat�rios de uma distribui��o normal. Tem como atributos
                   #algum vetor uma mean, um sd e um n que � um numero de observa��o 


?rm()             #� uma fun��o usada para remover objetos. Tem como argumentos o nome do objeto a ser exclu�do 










