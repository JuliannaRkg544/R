
#######FIXANDO CONTEÚDOS#######


#AMOSTRAS ALEATÓRIAS SEQUENCIAIS#

sample()                                      #a função sample seleciona dados aleatórios dentro de um intervalo

sample(1:30,5)                                #seleciona cinco numeros aleatórios dentro de uma sequencia de 1 a 30

sample(1:30,5, replace = T)                   #alterando o parâmetro replace para TRUE, o cinco numeros escolhidos porderão conter numeros repetidos 


#Fatores#

as.factor()                              #converte vetores em fatores o que é bom para criarmos categorias, onde elementos não são repetidos 

carga<-c(100,200,100,250,300,300)
carga
as.factor(carga)



#CRIANDO MATRIZES#

produtos<-c("televisao","geladeira","notebook","microondas")
qtd<-c(4,5,2,6)

nvet1<-cbind(produtos,qtd)                      #a função cbind nos permite organizar vetores em uma matriz, onde os vetores serão organizados em colunas

nvet2<-rbind(produtos,qtd)                      #já com o rbind os vetores estarão organizados em linhas

mat1<-matrix(1:6,3,2)                           #a função matrix() é outra forma de criar uma matriz
str(mat1)

mat2<-matrix(scan(what = "character"),2,2)

mat2[2,1]<-"juba"                               #alterando um elemento de uma matriz


#Curiosidade sobre matrizes#

a<-matrix(1:50,5,10)
contour(a)                                #cria um contorno 

image(a)                                  #cria uma grade de cores correspondente aos valores da matriz

persp(a)                                  #cria uma perspectiva


#Operações com Matrizes#

#um exemplo#

carlos<-c(120,130,400,230)                  #criando vetores com as vendas de alguns 'funcionários'
marcos<-c(20,334,420,130)
maria<-c(22,28,19,10)

vendas_Reais <- cbind(carlos,marcos,maria)   #criando matrizes com esses vetores
vendas_Reais

dim(vendas_Reais)                          #verificando as dimensões da matriz criada
nrow(vendas_Reais)
ncol(vendas_Reais)

vendas_Reais - 2                          #desta forma podemos fazer operações que valem para todos os elementos da matriz
vendas_Reais <- vendas_Reais + 5   

comissoes<- vendas_Reais*0.10               #se quísessemos calcular uma comissão de 10% para todos os vendedores
comissoes

#Outras possibilidades#
comissoes/2
comissoes ^ 2 

sqrt(comissoes)
log(comissoes)



#IF E ELSE - Estrutura de decisão#

#há duas formas de utilizar a estrutura de decisão if else através dos condicionais if() e else() ou através da função ifelse()

a<- 9823
if(a >= 10000) {
  b <- 'VALOR ALTO'
} else if(a < 10000 & a >= 1000) {
  b <- 'VALOR MEDIO'
} else if(a < 1000) {
  b <- 'VALOR BAIXO'
}
b                              #a estrutura if() else() é mais usada para tratar de dados isolados


a <- 839
c <- ifelse(a >= 10000, 'VALOR ALTO', ifelse(a < 10000 & a >= 1000, 'VALOR MEDIO', 'VALOR BAIXO'))
c

                             #enquanto a função ifelse é mais usada para tratar conjunto de dados, como matrizes e vetores
                             #mas também opera dados isolados


#outro exemplo

par_ou_impar <- function(x){
 
  
  if (x %% 2 == 0) {                                # se o número for divisível por 2 (resto da divisão zero) retorna "par"
    return("par")                                   # caso contrário, retorna "ímpar"
  } else {
    return("impar")
  }
  
}
par_ou_impar(5)



##Com a funçaõ ifelse()

par_ou_impar_ifelse <- function(x){  
                                                        # se x for divisivel por 2, retorna 'par', se não for, retorna impar
  ifelse(x %% 2 == 0, "par", "impar")
}

par_ou_impar_ifelse(7)



#ESTRUTURAS DE REPETIÇÃO#
#Há duas estrturas de repetição no R o for() e o while()


for(i in c(1, 2, 3, 4, 5)) {              #o i representará cada elemento do objeto
                                          # e nesse caso o vetor c foi o objeto a ser executado os comandos
  print(i^2)                              #no for() os commandos são executados até o índice(nesse caso o i) encontrar o ultimo elemneto do objeto
}


i <- 1
while(i <= 5){                          #no while, as tarefas serão executadas enquanto a condição determinada for atendida
  print(i)                              #seu uso é mais adequado para os casos em que é necessário ativar um "gatilho", para determinar a parada, ou seja, uma ação diferente da condição determinada
  i <- i + 1
}



#SOBRE O TIDYVERSE#

??tidyverse                             #é uma coleção de pacotes, dentre os quais temos o ggplot, dplyr, tidyr, raedr e outros
library(tidyverse)

#DPLYR#

#dplyr é um pacote de manipulação de dados. As principais funções desse pacote são:

select()           #seleciona colunas de tabelas
filter()           #filtra linhas dentro das colunas
arrange()          #organiza os dados
mutate()           #modifica/cria colunas
group_by()         #separa os dados no grupo que for selecionado
summarise()        #resume/agrega dados

#NÃO CONSEGUI FAZER OS EXEMPLOS, PRECISO OLHAR MELHOR COM CALMA#




#CRIANDO FUNÇÕES#

#Uma Atividade Prática

exemplo<-function()                                  #function(), cria uma função, que está sendo armazenada em exemplo
{                                                    #esta função não possui parâmetro, mas para acrescentá-lo basta informar entre os parênteses
 Nomes<-as.character()
 Prova1<-as.numeric()                                #declaração e definiçaõ das variáveis(nomes e tipos)
 Prova2<-as.numeric()
 Prova3<-as.numeric()
 MediaEscolar<-as.numeric()
 Situação<-as.character()

  alunos<-data.frame(Nomes,Prova1,Prova2,Prova3,MediaEscolar,Situação)                 #um data.frame como nome, notas, media e situação do aluno(aprovado ou reprovado)
  alunos$Situação<-as.character(alunos$Situação)
  alunos$Nomes<-as.character(alunos$Nomes)

    
print("Esta função Realiza as seguintes Atividades:")
print("1 - cadastra alunos")
print("2 - Recebe suas notas")
print("3 - Mostra sua média e diz se foi aprovado")

                                                     
print("Cadastro de Alunos --> Digite 1")
x<-scan(n=1)
i<-1
while(x==1)                                          #só cadastra um aluno enquanto a condição for atendida, que no caso é o valor digitado ser 1
{

      print("Nome:")                                 #Recebe o nome do aluno
      nome<-scan(what=character(),nmax=1)
  
      print("Nota 1:")                               #Recebe as notas do aluno através do scan() 
      Prova1<-scan(n=1)

      print("Nota 2:")
      Prova2<-scan(n=1)
  
      print("Nota 3:")
      Prova3<-scan(n=1)
   
      notas<-c(Prova1,Prova2,Prova3)                               #cira um vetor com as notas do aluno, assim podemos calcular a média com mais facilidade
  
          for(j in 1:length(notas))                                #usando o for para imprimir a nota de cada prova
                 {
                      cat("Nota na Prova",j,"-->")
                      cat("",notas[j],"\n")                        #a funçaõ cat permite imprimir não só o que está entre as aspas, mas também valores que ficam entre vírgula
                 }

          MediaEscolar<-mean(notas)                               #calcula a média baseado nas tres notas
          cat("Média do Aluno:",MediaEscolar,"\n")

       if (MediaEscolar>=7)                                      #se a média for maior ou igual a 7 o aluno será aprovado
            {                                                    #caso não, o objeto situaçaõ receberá 'Reprovado'
                 print("Aluno Aprovado") 
         Situação<-"Aprovado"                                     
            } 

       if (MediaEscolar<7)
            {
                 print("Aluno Reprovado")
         Situação<-"Reprovado"
            }

          
          alunos[i,]<-c(nome,Prova1,Prova2,Prova3,MediaEscolar,Situação)                #cria um vetor com toas as informaçãos do aluno
          
       print("Cadastrar outro aluno?   Sim-> 1    Não -> 0")                            #dá a possibilidade de cadastrar mais um aluno ou finalizar a função
       x<-scan(n=1)
       
i<-i+1
}

print("Obrigado")
print("Banco de Dados:")

return(alunos)

}
exemplo()









