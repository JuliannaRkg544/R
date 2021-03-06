

#Alguns comandos#

CTRL + L               #Limpa a tela do console

help()                 #Mostra para que serve uma fun��o

q()                    #Para sair do programa


#Sobre Pacotes#

install.packages()     #instala um pacote

library()              #carrega um pacote para poder utiliz�-lo 

search()               #Exibe os pacotes carregados na biblioteca



#Opera��es aritm�ticas#

8+14               #soma

89-40              #subtra��o

70/7               #divis�o

4^4                #potencia��o

4/2+40             #observando prioridades

sqrt(64)           #raiz quadrada

log(10)            #fornece o logaritmo

exp(20)            #fornece a exponencial

log(x,n)           #fornece o logaritmo de um n�mero x numa base n



#Algumas Fun��es Trignom�tricas#

x = 157

cos(x)             #fornece o coseno em radianos

sin(x)             #fornece o seno em radianos

tan(x)             #fornece a tangente em radianos


#Operadores de compara��o#

5==8                #igualdade
  
19!=15              #diferen�a

7>9                 #maior 

23<9                #menor

76<=76              #menor ou igual



#Alguns operadores booleanos#

6==9 & 7==90        #verifica o valor l�gico do operador AND

5>3 & 7!=10   

44>40 | 3<0         #verifica o valor l�gico do operador OR

10==(sqrt(100)) | 9<90

!90!=8               #verifica o valor l�gico do operador NOT



#Manipulando objetos#

c<-14                #vari�vel c recebe 14

real = 5.46          #em R valores n�o inteiros devem ser informados com um PONTO(.)
                     #e n�o v�rgula

10->b                # 10 � recebido pela vari�vel b

a<- 'Juliana'        #vari�vel a recebe a string 'juliana'

d<- 'uenf'



#Listando objetos#

ls()                 # lista todos objetos existentes em mem�ria

obj<- ls()           # armazena a lista de objetos numa vari�vel

obj                  #Exibe lista de objeto



#Removendo objetos#

remove(b)             #remove um objeto

rm(d)                 #outra forma de remover objetos 

remove (list = ls())  #remove todos os objetos



#Atributos dos objetos#

x<-c(1,5,3)
mode(x)              #mostra o tipo da vari�vel
length(x)            #mostra o tamanho da vari�vel

is.logical(x)        #verifica se a vari�vel � do tipo booleano
is.array(x)          #verifica se � uma matriz


#Vetores#

y<-c(2,3,76)        #a fun��o c() pode ser usada para criar vetores
y                   #exibe o vetor criado

z<-c('o','l','�')   #o vetor tamb�m pode ser de caracteres
z


#sequencias#

a<-1:20             #cria uma sequ�ncia de inteiros
a

b<-1:100            #       quando o vetor � muito longo, o R 
b                   #       quebra linha para exib��-lo.

seq(1,10,2)         #   tamb�m exibe sequ�ncias, mas tem como 
                    #   argumentos, inicio, fim e passos

rep(2,5)            #   cria uma sequ�ncia, tendo como argumentos
                    #   o elemento a ser repetido e o numero de repeti��es
rep(c(1,2),10)

