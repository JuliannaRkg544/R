

###########ENTRADA DE DADOS NO R##################


#VERORES E MATRIZES#

c()                                        # Cria um vetor com os dados inseridos
a<-c(4,56,10)
nome<-c('u','e','n','f')

rep()                                      # Cria uma repetição que também pode ser entendido como um vetor
rep(a,5)

seq(2,12,2)                                # Cria uma sequência que também pode ser entendida como vetor
vet<-1:9                                   # Outra forma de criar uma sequência

mat<-matrix(vet,3,3)                       # Cria uma matriz
mat

list()                                               # Cria uma lista, estrutura que armazena diferentes objetos
lista = list(mat,'hello',a)                    #cada parâmetro da lista é representado por um indíce
lista[2]                                       # que poderá ser usado para exibi-lo, sem ter de exibir a lista toda


data.frame()                               # Cria uma tabela de dados
ex<- data.frame(nome = c('joão','pedro','maria'), 
nota = c('8','5','6'))



#ENTRADA DE DADOS VIA TECLADO#

scan()                           # É a principal entrada de dados via teclado,
                                 # pode ser digitada diretamente no console
                                 # admite como parâmetro dados do tipo: inteiro, lógico, numérico, complexo, caractere, raw e list

readLines()                      # É uma função para entrada de dados via teclado especifico para textos
                                 # também pode ser digitado diretamente no prompt de comandos               



#UM TRECHO DE CÓDIGO COM READLINES#

fn.ex <- function() {
    cat("Digite o nome do time de futebol de sua preferência (em letras minúsculas)\n")
    time <- readLines(n = 1)
    if (time == "atletico-pr")
        cat("BOA ESCOLHA!!!\n")
    else cat("Ihh, tá mal de escolha...\n")
    return(invisible())
}

fn.ex()

#ENTRADA DE DADOS EM ARQUIVOS DE TEXTO#

read.table()                    #É o método mais comum de importação de dados
                                #é utilizada para ler dados em forma de tabela
                                #mas para isso os dados devem estar em formato de texto: .txt ou .csv




#USANDO O READ.TABLE#

#analisando primeira tabela(dados1)

dados1<-read.table(file = "C:\\Users\\julia\\OneDrive\\Documentos\\R\\exercicio_tableR.txt", h=T ) 
                                                                #é muito importante que as pastas do diretório estejam separados por \\ e não \
                                                                #senão o R não encontrará seu arquivo e apresentará um erro (pelo menos no windows)                             
                                                   
str(dados1)                                #serve para conferir a estrutura de um objeto, como a classe, o nome das colunas e o numero de linha

head(dados1)                               #exibe as primeiras linhas de uma tabela, serve para podermos conferir se os dados informados estão corretos  

class(dados1)                              #informa a classe de um objeto

dim(dados1)                                #informa a dimensão de um obejeto(numero de linhas e colunas)

hora<-dados1$V5                            #é uma forma de armazenar colunas de uma tabela
hora


dados1b<-read.csv2('C:\\Users\\julia\\OneDrive\\Documentos\\R\\exercicio_tableR.csv')

                                                          #OBS: quando salvo em .csv os comentários da tabela informada são interpretados como parte da tabela
                                                          # e a organização da tabela ficou bem bagunçada e as dimensões divergem do mesmo arquivo salvo em .txt

class(dados1b)

dim(dados1b)




#analisando a segunda tabela(dados2)

dados2<-read.csv2('C:\\Users\\julia\\OneDrive\\Documentos\\R\\exercicio2_tableR.csv')
                                                      

str(dados2)

class(dados2)

dim(dados2)


dados2b<-read.table(file = 'C:\\Users\\julia\\OneDrive\\Documentos\\R\\exercicio2_tableR.txt',
                    fill = TRUE, row.names = NULL)
                                                                    #foi necessário fazer uma alteração nos parâmetros fill e row.names para corrigir alguns erros
                                                                    

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
                                                      #para a leitura desses sites foi necessário alterar o parâmetro fill para TRUE



#ENTRADAS DE DADOS ATRAVÉS DA ÁREA DE TRANSFERÊNCIA#


dados.clip <- read.table("clipboard", h = TRUE, dec = "," ) 

str(dados.clip)                              #o parâmetro "h=T" foi necessario para informar ao R que a primeira linha da tabela lida
                                             #era um header e não um conteúdo em si da tabela 
                                          
dados.clip
readLi
dados.string<-readLines("clipboard", n = 1, warn = F )
                                                #para conseguir transferir um arquivo por clipboard que não esteja as linhas todas preenchidas
 dados.string                                  # é importante definir o parâmetro 'warn' para FALSE, assim os espaços vazios serão ignorados,
                                               # do contrário será apresentado um erro de que as linhas estão incompletas

 
 
 #IMPORTANDO DADOS DIRETAMENTE DE PLANILHAS#
 
 library(gdata)
 install.packages('gdata')
 library(gdata)                                      #gdata é um pacote que permite o R instalar dados diretamente de planilhas. 
                                                     #No entanto ele depende da linguagem Perl
 
 
 
#Exemplo usando gdata 
 
 
 dados.xls <- read.xls("dados/crabs.xls", sheet = "Plan1",
                       header = TRUE, dec = ",")             #o exemplo apresenta um erro pois a linguagem Perl não está instalada no  

#CARREGANDO DADOS#
 
 ls()                                         #lista todos os objetos do script
 
 data(mtcars)                                 #mtcars é um conjunto de dados  que pertencem a um pacote que já vem instalado e carregado pelo R ao inicializar
 mtcars
 str(mtcars)

 library(MASS)                                # Carrega o pacote MASS, outro pacote com conjunto de dados que já vem instalado no R, mas não carregado                                       

 data(topo)                                   #topo é um objeto de MASS
 ls()
 str(topo)
 topo
 
 ?data()
 data()                                       #A função data() pode ainda ser usada para listar os conjuntos de dados disponíveis.
                                              #e também para  listar os conjuntos de dados disponíveis para um pacote específico
 
 
 
 
 #IMPORTANDO DADOS DE OUTROS PROGRAMAS#
 
 
 #SAÍDAS DE DADOS DO R#
 
 data(iris)
 str(iris) 
 iris
 
 write.table(iris, file = "C:/Users/julia/OneDrive/Documentos/R/iris.txt")        
 
 rm()
 
 write.table(iris2, file = "C:/Users/julia/OneDrive/Documentos/iris.csv", row.names = FALSE,    #write.table é uma função que permite exportar uma tabela do R, criando um arquivo do tipo .txt ou .csv 
             sep = ";", dec = ",")                                                            # o arquivo .csv é o tipo utilizado em planilhas excel para salvar seus documentos
                                                                                               #logo, quando salvo em csv o arquivo abrirá em um programa de excel, e em txt num bloco de notas por padrão
                                                                                             #para salvar tabelas, o formato .csv é mais organizado, pricipalmente quando alteramos os parâmetro row.name para FALSO
 write.table(iris2, file = "C:/Users/julia/OneDrive/Documentos/iris.csv", row.names = FALSE,     
             sep = ";", dec = ",")                                                       
 
 
 #EXERCÍCIOS
 
 exemplo<-read.table('C:\\Users\\julia\\OneDrive\\Área de Trabalho\\R\\exemplo.csv')

 exemplo 
 
 
 
 
 
 
 
 




