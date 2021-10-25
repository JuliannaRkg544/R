

#########TESTANDO COMANDOS EM R PT-2##########


R.version                          # Fornece informações sobre a versão do R utlizado

version                            # Também informa sobre a versão 

run(CTRL+R)                        # Executa uma linha de comando por vez



#COMANDOS DE EXECUÇÃO NO RSTUDIO#

source(CTRL+SHIFT+S)                # Executa todo o script sem gerar retorno no console

source with echo (CTRL+SHIFT+ENTER) # Executa o script gerando retorno no console

run(CTRL+ENTER)                     # Executa uma linha de comando por vez

save(CTRL+S)                        # Salva um script


#FUNÇÕES#


raiz.quadrada <- sqrt(16)           # Função para calcular raiz quadrada

round(5.3499999, 2)                 # Função para arredondamento

round(digits = 2, x = 5.3499999)    # Uma outra forma de usar função, explicitando o nome dos parâmetros

?round                              # Para descobrir a utilidade da função

x <- 3.141593                       # Um exemplo de informar objetos nas funções
round(x, 3)

ceiling(x)                          # Arredonda o parâmetro para o inteiro imediato maior que ele 

floor(x)                            # Arredonda o parâmetro para o inteiro imediato menor que ele

sum(2,50)                           # Soma de valores

mean(10,10,10)                      # Média

var()                               # Variância, tem como argumentos um vetor, matriz ou data frame
 
saldos <- c(-10, 25, 41.15, 19)     # Um exemplo de variância
var(saldos)

median(9,4,5,3,12)                  #Fornece a  Mediana de uma amostra

summary()                           # Fornece um resumo estatístico descritivo para variáveis numéricas

quantile()                          # função quantis



#PACOTES#

install.packages("dplyr")           # Instala um famoso pacote de manipulação de dados

library(dplyr)                      # Carrega o pocote instalado

search()                            # Exibe os pacotes de carregados

install.packages ('tidyverse')

library(tidyverse)



#EXERCÍCIOS#

#A principal diferença entre console e script é que o cógigo escrito em um script 
#pode ser salvo e utilizado depois (ou compartilhado), o que não ocorre quando executado no console

?dplyr             # a documentação não é emcontrada

??dplyr            # é aberto uma aba de resultados de pesquisa sobre o pacote dplyr
                   #que é um pacote contendo várias funções que ajudam a organizar data.frames

?rnorm()           #é uma função que gera dados aleatórios de uma distribuição normal. Tem como atributos
                   #algum vetor uma mean, um sd e um n que é um numero de observação 


?rm()             #é uma função usada para remover objetos. Tem como argumentos o nome do objeto a ser excluído 










