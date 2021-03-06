

###########ENTRADA DE DADOS NO R##################


#VERORES E MATRIZES#

c()                                        # Cria um vetor com os dados inseridos
a<-c(4,56,10)
nome<-c('u','e','n','f')

rep()                                      # Cria uma repeti��o que tamb�m pode ser entendido como um vetor
rep(a,5)

seq(2,12,2)                                # Cria uma sequ�ncia que tamb�m pode ser entendida como vetor
vet<-1:9                                   # Outra forma de criar uma sequ�ncia

mat<-matrix(vet,3,3)                       # Cria uma matriz
mat

list()                                               # Cria uma lista, estrutura que armazena diferentes objetos
lista = list(mat,'hello',a)                    #cada par�metro da lista � representado por um ind�ce
lista[2]                                       # que poder� ser usado para exibi-lo, sem ter de exibir a lista toda


data.frame()                               # Cria uma tabela de dados
ex<- data.frame(nome = c('jo�o','pedro','maria'), 
nota = c('8','5','6'))



#ENTRADA DE DADOS VIA TECLADO#

scan()                           # � a principal entrada de dados via teclado,
                                 # pode ser digitada diretamente no console
                                 # admite como par�metro dados do tipo: inteiro, l�gico, num�rico, complexo, caractere, raw e list

readLines()                      # � uma fun��o para entrada de dados via teclado especifico para textos
                                 # tamb�m pode ser digitado diretamente no prompt de comandos               



#UM TRECHO DE C�DIGO COM READLINES#

fn.ex <- function() {
    cat("Digite o nome do time de futebol de sua prefer�ncia (em letras min�sculas)\n")
    time <- readLines(n = 1)
    if (time == "atletico-pr")
        cat("BOA ESCOLHA!!!\n")
    else cat("Ihh, t� mal de escolha...\n")
    return(invisible())
}

fn.ex()

#ENTRADA DE DADOS EM ARQUIVOS DE TEXTO#

read.table()                    #� o m�todo mais comum de importa��o de dados
                                #� utilizada para ler dados em forma de tabela
                                #mas para isso os dados devem estar em formato de texto: .txt ou .csv




#USANDO O READ.TABLE#

#analisando primeira tabela(dados1)

dados1<-read.table(file = "C:\\Users\\julia\\OneDrive\\Documentos\\R\\exercicio_tableR.txt", h=T ) 
                                                                #� muito importante que as pastas do diret�rio estejam separados por \\ e n�o \
                                                                #sen�o o R n�o encontrar� seu arquivo e apresentar� um erro (pelo menos no windows)                             
                                                   
str(dados1)                                #serve para conferir a estrutura de um objeto, como a classe, o nome das colunas e o numero de linha

head(dados1)                               #exibe as primeiras linhas de uma tabela, serve para podermos conferir se os dados informados est�o corretos  

class(dados1)                              #informa a classe de um objeto

dim(dados1)                                #informa a dimens�o de um obejeto(numero de linhas e colunas)

hora<-dados1$V5                            #� uma forma de armazenar colunas de uma tabela
hora


dados1b<-read.csv2('C:\\Users\\julia\\OneDrive\\Documentos\\R\\exercicio_tableR.csv')

                                                          #OBS: quando salvo em .csv os coment�rios da tabela informada s�o interpretados como parte da tabela
                                                          # e a organiza��o da tabela ficou bem bagun�ada e as dimens�es divergem do mesmo arquivo salvo em .txt

class(dados1b)

dim(dados1b)




#analisando a segunda tabela(dados2)

dados2<-read.csv2('C:\\Users\\julia\\OneDrive\\Documentos\\R\\exercicio2_tableR.csv')
                                                      

str(dados2)

class(dados2)

dim(dados2)


dados2b<-read.table(file = 'C:\\Users\\julia\\OneDrive\\Documentos\\R\\exercicio2_tableR.txt',
                    fill = TRUE, row.names = NULL)
                                                                    #foi necess�rio fazer uma altera��o nos par�metros fill e row.names para corrigir alguns erros
                                                                    

dados2b  

class(dados)

dim(dados2b)



#Lendo os dados diretamente da web#

site1<-read.table('http://www.leg.ufpr.br/~walmes/data/banana.txt', fill = TRUE)
site1
class(site1)
dim(site1)

site2<-read.table('http://www.leg.ufpr.br/~walmes/data/triathlon.txt', fill = TRUE)
site2
class(site2)
dim(site2)
                                                      #para a leitura desses sites foi necess�rio alterar o par�metro fill para TRUE



#ENTRADAS DE DADOS ATRAV�S DA �REA DE TRANSFER�NCIA#


dados.clip <- read.table("clipboard", h = TRUE, dec = "," ) 

str(dados.clip)                              #o par�metro "h=T" foi necessario para informar ao R que a primeira linha da tabela lida
                                             #era um header e n�o um conte�do em si da tabela 
                                          
dados.clip
readLi
dados.string<-readLines("clipboard", n = 1, warn = F )
                                                #para conseguir transferir um arquivo por clipboard que n�o esteja as linhas todas preenchidas
 dados.string                                  # � importante definir o par�metro 'warn' para FALSE, assim os espa�os vazios ser�o ignorados,
                                               # do contr�rio ser� apresentado um erro de que as linhas est�o incompletas

 
 
 #IMPORTANDO DADOS DIRETAMENTE DE PLANILHAS#
 
 library(gdata)
 install.packages('gdata')
 library(gdata)                                      #gdata � um pacote que permite o R instalar dados diretamente de planilhas. 
                                                     #No entanto ele depende da linguagem Perl
 
 
 
#Exemplo usando gdata 
 
 
 dados.xls <- read.xls("dados/crabs.xls", sheet = "Plan1",
                       header = TRUE, dec = ",")             #o exemplo apresenta um erro pois a linguagem Perl n�o est� instalada no  

#CARREGANDO DADOS#
 
 ls()                                         #lista todos os objetos do script
 
 data(mtcars)                                 #mtcars � um conjunto de dados  que pertencem a um pacote que j� vem instalado e carregado pelo R ao inicializar
 mtcars
 str(mtcars)

 library(MASS)                                # Carrega o pacote MASS, outro pacote com conjunto de dados que j� vem instalado no R, mas n�o carregado                                       

 data(topo)                                   #topo � um objeto de MASS
 ls()
 str(topo)
 topo
 
 ?data()
 data()                                       #A fun��o data() pode ainda ser usada para listar os conjuntos de dados dispon�veis.
                                              #e tamb�m para  listar os conjuntos de dados dispon�veis para um pacote espec�fico
 
 
 
 
 #IMPORTANDO DADOS DE OUTROS PROGRAMAS#
 
 
 #SA�DAS DE DADOS DO R#
 
 data(iris)
 str(iris) 
 iris
 
 write.table(iris, file = "C:/Users/julia/OneDrive/Documentos/R/iris.txt")        
 
 rm()
 
 write.table(iris2, file = "C:/Users/julia/OneDrive/Documentos/iris.csv", row.names = FALSE,    #write.table � uma fun��o que permite exportar uma tabela do R, criando um arquivo do tipo .txt ou .csv 
             sep = ";", dec = ",")                                                            # o arquivo .csv � o tipo utilizado em planilhas excel para salvar seus documentos
                                                                                               #logo, quando salvo em csv o arquivo abrir� em um programa de excel, e em txt num bloco de notas por padr�o
                                                                                             #para salvar tabelas, o formato .csv � mais organizado, pricipalmente quando alteramos os par�metro row.name para FALSO
 write.table(iris2, file = "C:/Users/julia/OneDrive/Documentos/iris.csv", row.names = FALSE,     
             sep = ";", dec = ",")                                                       
 
 
 #EXERC�CIOS
 
 exemplo<-read.table('C:\\Users\\julia\\OneDrive\\�rea de Trabalho\\R\\exemplo.csv')

 exemplo 
 
 
 
 
 
 
 
 




