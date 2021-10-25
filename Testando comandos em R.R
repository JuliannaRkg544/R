

#Operações aritméticas

8+14        #soma

4^4         #multiplicação

4/2+40      #observando prioridades

sqrt(64)    #raiz quadrada



#Operadores de comparação

5==8        #igualdade

19!=15      #diferença

7>9         #maior 

23<9        #menor

76<=76      #menor ou igual



#Alguns operadores booleanos

6==9 & 7==90  #verifica o valor lógico do operador AND

5>3 & 7!=10   

44>40 | 3<0   #verifica o valor lógico do operador OR

10==(sqrt(100)) | 9<90

!90!=8        #verifica o valor lógico do operador NOT



#Manipulando objetos

c<-14           #variável c recebe 14

10->b           # 10 é recebido pela variável b

a<- 'Juliana'   #variável a recebe a string 'juliana'

d<- 'uenf'



#Listando objetos

ls()             # lista todos objetos existentes em memória

obj<- ls()       # armazena a lista de objetos numa variável

obj              #Exibe lista de objeto



#Removendo objetos

remove(b)             #remove um objeto

rm(d)                 #outra forma de remover objetos 

remove (list = ls())  #remove todos os objetos



#Atributos dos objetos

x<-c(1,5,3)
mode(x)              #mostra o tipo da variável
length(x)            #mostra o tamanho da variável

is.logical(x)        #verifica se a variável é do tipo booleano
is.array(x)          #verifica se é uma matriz


#Vetores 

y<-c(2,3,76)       #a função c() pode ser usada para criar vetores
y                  #exibe o vetor criado

z<-c('o','l','á')  #o vetor também pode ser de caracteres
z


#sequências

a<-1:20   #cria uma sequência de inteiros
a

b<-1:100    #       quando o vetor é muito longo, o R 
b           #       quebra linha para exibí-lo.

seq(1,10,2)     #   também exibe sequências, mas tem como 
                #   argumentos, inicio, fim e passos

rep(2,5)        #   cria uma sequência, tendo como arguumentos
                #   o elemento a ser repetido e o numero de repetições
rep(c(1,2),10)
















