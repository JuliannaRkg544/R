
#######FIXANDO CONTE�DOS#######


#AMOSTRAS ALEAT�RIAS SEQUENCIAIS#

sample()                                      #a fun��o sample seleciona dados aleat�rios dentro de um intervalo

sample(1:30,5)                                #seleciona cinco numeros aleat�rios dentro de uma sequencia de 1 a 30

sample(1:30,5, replace = T)                   #alterando o par�metro replace para TRUE, o cinco numeros escolhidos porder�o conter numeros repetidos 


#Fatores#

as.factor()                              #converte vetores em fatores o que � bom para criarmos categorias, onde elementos n�o s�o repetidos 

carga<-c(100,200,100,250,300,300)
carga
as.factor(carga)



#CRIANDO MATRIZES#

produtos<-c("televisao","geladeira","notebook","microondas")
qtd<-c(4,5,2,6)

nvet1<-cbind(produtos,qtd)                      #a fun��o cbind nos permite organizar vetores em uma matriz, onde os vetores ser�o organizados em colunas

nvet2<-rbind(produtos,qtd)                      #j� com o rbind os vetores estar�o organizados em linhas

mat1<-matrix(1:6,3,2)                           #a fun��o matrix() � outra forma de criar uma matriz
str(mat1)

mat2<-matrix(scan(what = "character"),2,2)

mat2[2,1]<-"juba"                               #alterando um elemento de uma matriz


#Curiosidade sobre matrizes#

a<-matrix(1:50,5,10)
contour(a)                                #cria um contorno 

image(a)                                  #cria uma grade de cores correspondente aos valores da matriz

persp(a)                                  #cria uma perspectiva


#Opera��es com Matrizes#

#um exemplo#

carlos<-c(120,130,400,230)                  #criando vetores com as vendas de alguns 'funcion�rios'
marcos<-c(20,334,420,130)
maria<-c(22,28,19,10)

vendas_Reais <- cbind(carlos,marcos,maria)   #criando matrizes com esses vetores
vendas_Reais

dim(vendas_Reais)                          #verificando as dimens�es da matriz criada
nrow(vendas_Reais)
ncol(vendas_Reais)

vendas_Reais - 2                          #desta forma podemos fazer opera��es que valem para todos os elementos da matriz
vendas_Reais <- vendas_Reais + 5   

comissoes<- vendas_Reais*0.10               #se qu�sessemos calcular uma comiss�o de 10% para todos os vendedores
comissoes

#Outras possibilidades#
comissoes/2
comissoes ^ 2 

sqrt(comissoes)
log(comissoes)



#IF E ELSE - Estrutura de decis�o#

#h� duas formas de utilizar a estrutura de decis�o if else atrav�s dos condicionais if() e else() ou atrav�s da fun��o ifelse()

a<- 9823
if(a >= 10000) {
  b <- 'VALOR ALTO'
} else if(a < 10000 & a >= 1000) {
  b <- 'VALOR MEDIO'
} else if(a < 1000) {
  b <- 'VALOR BAIXO'
}
b                              #a estrutura if() else() � mais usada para tratar de dados isolados


a <- 839
c <- ifelse(a >= 10000, 'VALOR ALTO', ifelse(a < 10000 & a >= 1000, 'VALOR MEDIO', 'VALOR BAIXO'))
c

                             #enquanto a fun��o ifelse � mais usada para tratar conjunto de dados, como matrizes e vetores
                             #mas tamb�m opera dados isolados


#outro exemplo

par_ou_impar <- function(x){
 
  
  if (x %% 2 == 0) {                                # se o n�mero for divis�vel por 2 (resto da divis�o zero) retorna "par"
    return("par")                                   # caso contr�rio, retorna "�mpar"
  } else {
    return("impar")
  }
  
}
par_ou_impar(5)



##Com a fun�a� ifelse()

par_ou_impar_ifelse <- function(x){  
                                                        # se x for divisivel por 2, retorna 'par', se n�o for, retorna impar
  ifelse(x %% 2 == 0, "par", "impar")
}

par_ou_impar_ifelse(7)



#ESTRUTURAS DE REPETI��O#
#H� duas estrturas de repeti��o no R o for() e o while()


for(i in c(1, 2, 3, 4, 5)) {              #o i representar� cada elemento do objeto
                                          # e nesse caso o vetor c foi o objeto a ser executado os comandos
  print(i^2)                              #no for() os commandos s�o executados at� o �ndice(nesse caso o i) encontrar o ultimo elemneto do objeto
}


i <- 1
while(i <= 5){                          #no while, as tarefas ser�o executadas enquanto a condi��o determinada for atendida
  print(i)                              #seu uso � mais adequado para os casos em que � necess�rio ativar um "gatilho", para determinar a parada, ou seja, uma a��o diferente da condi��o determinada
  i <- i + 1
}



#SOBRE O TIDYVERSE#

??tidyverse                             #� uma cole��o de pacotes, dentre os quais temos o ggplot, dplyr, tidyr, raedr e outros
library(tidyverse)

#DPLYR#

#dplyr � um pacote de manipula��o de dados. As principais fun��es desse pacote s�o:

select()           #seleciona colunas de tabelas
filter()           #filtra linhas dentro das colunas
arrange()          #organiza os dados
mutate()           #modifica/cria colunas
group_by()         #separa os dados no grupo que for selecionado
summarise()        #resume/agrega dados

#N�O CONSEGUI FAZER OS EXEMPLOS, PRECISO OLHAR MELHOR COM CALMA#




#CRIANDO FUN��ES#

#Uma Atividade Pr�tica

exemplo<-function()                                  #function(), cria uma fun��o, que est� sendo armazenada em exemplo
{                                                    #esta fun��o n�o possui par�metro, mas para acrescent�-lo basta informar entre os par�nteses
 Nomes<-as.character()
 Prova1<-as.numeric()                                #declara��o e defini�a� das vari�veis(nomes e tipos)
 Prova2<-as.numeric()
 Prova3<-as.numeric()
 MediaEscolar<-as.numeric()
 Situa��o<-as.character()

  alunos<-data.frame(Nomes,Prova1,Prova2,Prova3,MediaEscolar,Situa��o)                 #um data.frame como nome, notas, media e situa��o do aluno(aprovado ou reprovado)
  alunos$Situa��o<-as.character(alunos$Situa��o)
  alunos$Nomes<-as.character(alunos$Nomes)

    
print("Esta fun��o Realiza as seguintes Atividades:")
print("1 - cadastra alunos")
print("2 - Recebe suas notas")
print("3 - Mostra sua m�dia e diz se foi aprovado")

                                                     
print("Cadastro de Alunos --> Digite 1")
x<-scan(n=1)
i<-1
while(x==1)                                          #s� cadastra um aluno enquanto a condi��o for atendida, que no caso � o valor digitado ser 1
{

      print("Nome:")                                 #Recebe o nome do aluno
      nome<-scan(what=character(),nmax=1)
  
      print("Nota 1:")                               #Recebe as notas do aluno atrav�s do scan() 
      Prova1<-scan(n=1)

      print("Nota 2:")
      Prova2<-scan(n=1)
  
      print("Nota 3:")
      Prova3<-scan(n=1)
   
      notas<-c(Prova1,Prova2,Prova3)                               #cira um vetor com as notas do aluno, assim podemos calcular a m�dia com mais facilidade
  
          for(j in 1:length(notas))                                #usando o for para imprimir a nota de cada prova
                 {
                      cat("Nota na Prova",j,"-->")
                      cat("",notas[j],"\n")                        #a fun�a� cat permite imprimir n�o s� o que est� entre as aspas, mas tamb�m valores que ficam entre v�rgula
                 }

          MediaEscolar<-mean(notas)                               #calcula a m�dia baseado nas tres notas
          cat("M�dia do Aluno:",MediaEscolar,"\n")

       if (MediaEscolar>=7)                                      #se a m�dia for maior ou igual a 7 o aluno ser� aprovado
            {                                                    #caso n�o, o objeto situa�a� receber� 'Reprovado'
                 print("Aluno Aprovado") 
         Situa��o<-"Aprovado"                                     
            } 

       if (MediaEscolar<7)
            {
                 print("Aluno Reprovado")
         Situa��o<-"Reprovado"
            }

          
          alunos[i,]<-c(nome,Prova1,Prova2,Prova3,MediaEscolar,Situa��o)                #cria um vetor com toas as informa��os do aluno
          
       print("Cadastrar outro aluno?   Sim-> 1    N�o -> 0")                            #d� a possibilidade de cadastrar mais um aluno ou finalizar a fun��o
       x<-scan(n=1)
       
i<-i+1
}

print("Obrigado")
print("Banco de Dados:")

return(alunos)

}
exemplo()









