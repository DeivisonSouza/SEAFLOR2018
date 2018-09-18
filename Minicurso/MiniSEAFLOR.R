#####################################################################################
#     _____ _________________ _    _____  ______         _____  _____  __    ___    #
#    /  ___|  ___|  _  |  ___| |  /  _  \ | ___ \       / __  \|  _  |/  |  / _ \   #
#    \ `--.| |__ | | | | |__ | |  | | | | | |_/ /  ___  `' / /'| |/' |`| |  ||_||   #
#     `--. \  __|| |_| | |__|| |  | | | | |    /  |___|   / /  |  /| | | |  | _ |   #
#    /\__/ / |___| ___ | |   | |__| |_| | | |\ \        ./ /___\ |_/ /_| |_.||_||   #
#    \____/\____/|_| |_|_|   \____\_____/ \_| \_|       \_____/ \___/ \___/ \___/   #
#                                                                                   #
#   Linguagem R para iniciantes: da programação básica à análise de dados           #
#   II Semana de Aperfeiçoamento em Engenharia Florestal (SEAFLOR)                  #
#                                                                                   #
#   Ministrantes:                                                                   #
#   Deivison Venicio Souza                                                          #
#   Thiago Wendling Gonçalves de Oliveira                                           #
#   Luani Rosa de Oliveira Piva                                                     #
#####################################################################################

# R está sempre apontado para um diretório em seu computador. 
# Para descobrir qual o seu diretório corrente execute a função getwd (get working directory).
# A função getwd() não possui argumentos:
getwd()

# Caso não esteja no diretório desejado, você pode alterar o diretório usando a função
# setwd (set working directory). No entanto, dentro da função você deve especificar o 
# caminho para o diretório que deseja salvar os dados da sua sessão atual:
setwd()
setwd("C:/Users/Deivison/OneDrive/R/SEAFLOR2@18/Minicurso/")
setwd("C:/Users/Deivison/OneDrive/R/SEAFLOR2@18/Mini")
# Outras Alternativas:
setwd(choose.dir())

# Session --- Set Working Directory ----Choose directory
  
## Operações e operadores aritméticos
# A linguagem R permite executar operações aritméticas básica (soma, subtração, multiplicação,
# divisão e potenciação):

2+3                             # Soma
4*9                             # Multiplicação
20/5                            # Divisão
32-10                           # Subtração
5^3                             # Potenciação
10%%3                           # Resto inteiro da divisão
10%/%3                          # Parte inteira da divisão 

10%/%4
10%%4

#     Dividendo | Divisor
#     Resto       Quociente
#     
# Qual termo numérico é o resto da divisão?
# Quando o resto é zero, a divisão é exata! Por outro lado, caso o resto seja diferente de 
# zero, a divisão é não exata!

# Obs.: O resto é o valor que sobra da divisão para que o quociente permaneça um inteiro!

#------------------------------------------------------------------------------------------
## Operações mais complexas

((5+3)/2)^2
(5+(3/2))^2
(5+(3/2))*4^2+(32-(10/2))

#------------------------------------------------------------------------------------------
## Operadores lógicos (retorno booleano)
 
5<10
3>8
9<=10
5>=5
3==6
2*4 && 16/2 <= 2^3
(2*5 || 20/2) == 2^3    # tentar entender....

#------------------------------------------------------------------------------------------
## Algumas funções matemáticas do R
sqrt(121)                         # raiz quadrada
abs(-23)                          # módulo do valor
log(10)                           # logaritmo neperiano
log(10,base=10)                   # logaritmo na base 10
log10(10)                         # logaritmo na base 10
log(10,base=4.567)                # logaritmo na base 3.4076
exp(2)                            # exponencial
factorial(8)                      # fatorial 8
log(pi)                           # logaritmo de pi

#------------------------------------------------------------------------------------------
## Alguns comandos básicos importantes...

a <- factorial(8)
b <- sqrt(225)


ls()                                # Listar os objetos na janela de trabalho atual
objects()

rm(a)                                # Remover um objeto qualquer

help()                              # Solicitar ajuda sobre o uso de uma função
help('mean')                        # ajuda sobre a função 'mean'
?sqrt

Ctrl + L                            # Limpar a tela do R console

history()                           # Listar os últimos comandos executados

getwd()                             # Mostrar o diretório de trabalho

setwd()                             # Mudar o diretório de trabalho

install.packages()                  # Instalar um pacote específico
install.packages('car', dependencies = TRUE)

q()                                 # Fechar o console R

library(car)                           # lista os pacotes disponíveis
require(car)
library(animation)                  # Carrega o pacote 'animation'

dir()                               # Listar os arquivos existentes no diretório

getOption('OutDec')                 # Verificar o separador decimal definido

options(OutDec=',')                 # Mudar o separador decimal para vírgula
options(OutDec='.')

round(x, digits=0)                  # Função para arredondamento de casas decimais
round(23.98765487654322, digits=2)

data(package = .packages(all.available = TRUE)) # listar os conjuntos de dados em todos os pacotes *disponíveis*.

data()                              # Lista os conjuntos de dados dos pacotes atualmente carregados

?nomedodataset                      # Obter informações detalhadas sobre um data set
?iris

class()                             # Verificar a classe de um objeto específico

search()                            # Listar todos os pacotes carregados

#------------------------------------------------------------------------------------------
## Estrutura de dados no R

# Tipos de objetos no R
#Os objetos são criados no R com o objetivo de armazenar dados. Todo objeto em R têm uma
#classe, que pode ser descoberta usando a função class(). Os objetos-vetores podem ser do tipo
#numeric, logical, character, etc. Outros objetos incluem matrizes, data frames, funções,
#listas, arrays.

#Antes de iniciar as seções que detalham os tipos de objetos existentes no R é importante 
#saber como nomeá-los. Assim, podemos listar algumas condições para atribuição de nomes à 
#objetos:

#1. O nome do objeto deve, necessariamente, iniciar com uma letra;
#2. Pode-se usar letras maiúsculas ou minúsculas no nome do objeto;
#3. O nome dos objetos são sensíveis às letras maiúsculas ou minúsculas (ex: Ufpr / ufpr);
#4. O nome não pode ter símbolos de funções ou operações matemáticas (+; /; -; *; ^);
#5. Números (0 a 9) podem ser inseridos no nome do objeto, exceto na primeira posição;
#6. Não se pode usar espaço entre os nomes dos objetos (alternativa = usar ponto (.) ou underline (_);
#7. Para atribuir o nome a um objeto deve-se usar o comando <- (recebe); e
# 8. Pode-se usar também a função assign() para fazer atribuição (menos comum).
#Obs.: O R é case sensitive, isto é, diferencia letras maiúsculas e minúsculas.

#------------------------------------------------------------------------------------------
### Vetores
#------------------------------------------------------------------------------------------
# O vetor é o tipo de objeto mais importante em R, constituindo a forma mais simples de armazenar 
# dados. São caracterizados por possuírem somente uma dimensão e, todos os elementos constituintes 
# devem ter, obrigatoriamente, a mesma natureza (classe).

# Os vetores podem ser considerados como células contíguas que contém dados. Estas células 
# podem ser acessadas por meio de operações de indexação [(R Language Definition).](http://stat.ethz.ch/R-manual/R-devel/doc/manual/R-lang.html#Objects)
                                                                                                                                                                           
# As principais classes de vetores são:

#1. numeric;
#2. character;
#3. integer;
#4. logical;
#5. complex; e
#6. factor.

#### Quais funções usar para criar um vetor?

####################
#CONCATENATE
####################

#a) Função c() (concatenate): Função genérica que permite concatenar (combinar) argumentos
#para formar um vetor.


####################
#SEQUENCE
####################

#b) Função seq() (sequence): Função genérica usada para gerar sequências de números em
#intervalos pré-definidos. Os principais parâmetros da função seq():

#Sintaxe
#seq(from = ?, to = ?, by = ?, length.out = ?, along.with = ?)

#Onde:
#from = define um valor inicial (start) para a sequência;
#to = define um valor máximo para a sequência;
#by = define um valor incremental para a sequência;
#length.out = define o comprimento da sequência dentro de um intervalo; e
#along.with = define uma sequência de inteiros do tamanho do argumento repassado.

####################
#REPLICATE
####################

#c) Função rep() (replicate): Função genérica usada para replicar um valor “x” . Os principais
#parâmetros da função rep():

#rep(x = ?, times = ?, each = ?)
#Onde:
#x = escalar, vetor (incluindo uma lista), entre outros;
#times = Um vetor inteiro (não negativo) indicando quantas vezes repetir cada elemento; e
#each = Cada elemento de x é repetido n vezes.

####################
#SCAN
####################
#d) Função scan(): Usada para criar vetores diretamente no R Console

# Existe uma sutil diferença ao utilizar a função c() para criar vetores de números ou 
# de caracteres:

# Vetor numérico: Deve-se concatenar os números separando-os por vírgula; e
# Vetor de caractere: Deve-se escrever cada elemento entre aspas e separá-los por vírgula.

#-----------------------------------------------------------------------------------------
# Criando vetores:
#-----------------------------------------------------------------------------------------
#a) Função c() (concatenate):

# Criando objeto-vetor e atribuindo nomes.

c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
assign("esp1", c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe"))
especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")     

c(23.0, 27.0, 33.6, 42.6, 52.1)
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)

c(8.5, 9.2, 10.5, 13.4, 15.8)
altura <- c(8.5, 9.2, 10.5, 13.4, 15.8)

#Obs.: A Função assign() também pode ser usada para concatenar.

# Elementos de diferentes naturezas no mesmo vetor?
#Você já sabe que um vetor é constituído por elementos de uma mesma classe (natureza). Então, o
#que aconteceria caso tentássemos criar um vetor com elementos de diferentes naturezas? Neste
#caso, o R fará com que todos os elementos do vetor tenham o mesma natureza.
#Considere a criação de um vetor com dois tipos de elementos: numérico e caractere

x <- c(42.6, 23.0, 27.0, 33.6, "Acapu")
print(x)
class(x)

#Perceba que na existência de um elemento do tipo caractere (strings) todos os elementos
#númericos foram transformados para caractere (elementos ficaram entre aspas!). Assim, a classe do
#vetor é coagida a character. Isto siginifica, por exemplo, que o primeiro elemento do vetor “x” é
#a string “42.6” e não um número 42.6. Em consequência, operações matemáticas não poderiam ser
#aplicadas sobre este vetor.

#b) Função seq() (sequence):

#seq(from = ?, to = ?, by = ?, length.out = ?, along.with = ?)

especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")

seq(10)                             # Sequência de 1 a 10, com intervalo 1.

seq(1:10)                           # Sequência de 1 a 10, com intervalo 1.

seq(from = 1, to = 10, by = 1)      # Sequência de 1 a 10, com intervalo 1.

seq(from = -2, to = 10, by = 2)     # Sequência de -2 a 10, com intervalo 2.

seq(from=0, to=1, length.out = 11)  # Sequência de 11 números entre 0 e 1.

seq(along.with = especie)           # Sequência do tamanho do vetor-espécie.


#c) Função rep() (replicate):

#rep(x = ?, times = ?, each = ?)

rep(x=1:4, 2)                    # Repete a sequência de 1 a 4 (2x).

rep(1:4, times = 3)              # Repe a sequência de 1 a 4 (3x).

rep(x = 1:4, each = 2)           # Repete cada valor em "x" (2x).

rep(1:4, c(2,2,2,2))             # Repete cada valor em "x" (2x).

rep(1:4, c(2,1,2,1))             # Repete cada valor em "x", com base em c().

rep(1:4, each = 2, len = 4)      # Repete cada valor em "x", até 4 números.

rep(1:4, each = 2, len = 10)     # Regra da reciclagem.

rep(1:4, each = 2, times = 3)    # Repete cada valor em "x" (2x), por 3x.


#d) Função scan()

# Crie os vetores abaixo usando a função scan()

especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")

diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)

altura <- c(8.5, 9.2, 10.5, 13.4, 15.8)

#-----------------------------------------------------------------------------------------
#### Como identificar a classe de um objeto-vetor no R?
# A identificação da classe de um objeto-vetor no R pode ser feita usando a função class(). 
# Além disso, existem funções lógicas que testam a classe de um objeto-vetor:

#is.numeric();
#is.character();
#is.factor();
#is.integer(); e
#is.logical().

# a) Objeto-vetor da classe “numeric”

a <- 45; class(a)
is.numeric(a)

b <- pi; class(b)
is.numeric(b)

c <- sqrt(2)
class(c)
is.numeric(c)

diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)
class(diametro)
is.numeric(diametro)

#b) Objeto-vetor da classe "character"

d <- "olá Mundo"; class(d); is.character(d)

e <- c("Quem vai ao Pará", "Parou", "tomou açai, ficou!")
class(e); is.character(e)

especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
class(especie); is.character(especie)
especie
#c) Objeto-vetor da classe "factor"

#A função factor() é usada para codificar um vetor como um “fator” (categorias). Outra alternativa
#é usar a função de conversão as.factor(). Um dos usos mais importantes dos fatores está na modelagem estatística. As variáveis categóricas
#entram em modelos estatísticos de maneira diferente das variáveis contínuas. Assim, o
#armazenamento de dados como fatores garante que as funções de modelagem tratem esses dados
#corretamente.

#Os fatores em R são armazenados como um vetor de valores inteiros com um conjunto correspondente
#de valores de caractere a serem usados quando o fator é exibido. Os níveis (levels) de um fator
#sempre serão valores de caracteres.

#No exemplo a seguir, observe que o objeto-vetor “cortar” ao ser impresso no console do R pertence
#à classe character, e todos os seus valores são mostrados entre “aspas”. Iremos usar a função
#factor() para transformar o objeto-vetor para a classe factor. Feito isso, você perceberá que os
#elementos não serão impressos entre “aspas” e, ainda, que foram transformados em níveis de fator,
#no caso “Não” e “Sim”.

cortar <- c("Não", "Não", "Não", "Não", "Sim", "Sim")
print(cortar) 
class(cortar)

fcortar <- factor(cortar)
print(fcortar)

#Os rótulos (nomes) dos níveis de fatores podem ser alterados através do argumento 
#labels:

fuste <- c(1, 2, 2, 3, 1, 2, 3, 3, 1, 2, 3, 3, 1, 4, 4)
print (fuste); class(fuste)

ffuste <- factor(x = fuste, 
                 labels = c("I","II","III", "IV"))
print(ffuste)

levels(ffuste)

#Por default os fatores (levels) ficam dispostos em ordem alfabética:

# Fatores (levels) em ordem alfabética!

mes <- c ("Março", "Abril", "Janeiro", "Novembro", 
          "Agosto","Setembro", "Outubro", "Julho", 
          "Dezembro", "Fevereiro", "Maio", "Junho")
class(mes)

fmes <- factor(mes)
class(fmes)

print(fmes)

#Pode-se declarar explicitamente que existe uma hierarquia entre os fatores usando 
#ordered = TRUE.

# Fatores ordenados
fmes2 <- factor(x = mes, 
                levels = c("Janeiro", "Fevereiro", "Março", "Abril", 
                           "Maio", "Junho", "Julho", "Agosto", 
                           "Setembro", "Outubro", "Novembro", "Dezembro"),
                ordered = TRUE);
class(fmes2)
print(fmes2)

#-------------------------------------------------------------------------------------------
#### Elementos especias
#Todo objeto-vetor pode possuir elementos especiais: **NA** (**Not Available**). 
#Esta **string** dentro de um objeto-vetor significa um valor desconhecido. Por exemplo, 
#imagine que você realizou uma prova em uma turma de 10 alunos, porém 2 faltaram. 
#Poderíamos específicar um vetor de notas sem desconsiderar a existência dos alunos 
#que faltaram:

# Not Available
notas <- c(5.6, 6.7, NA, 8.9, 2.3, 5.6, 7.8, 8.9, 6.1, NA)
print(notas)
length(notas)
is.na(notas)
mean(notas, na.rm = T)

#-------------------------------------------------------------------------------------------
### Matrizes

#### Como criar matrizes?

#As matrizes diferenciam-se dos vetores por admitirem duas dimensões, expressas por linhas e
#colunas. Uma matriz pode ser formada por elementos numéricos e/ou caracteres (strings) na
#sua estrutura.

#A construção de matrizes no R pode ser feita com uso das funções rbind() (row bind) e cbind()
#(colum bind). No entanto, o mecanismo mais eficiente para construir matrizes é usar a função
#matrix().

#As funções rbind() e cbind() organizam objetos-vetores em linhas ou colunas, respectivamente.
#Quando utilizadas as funções rbind() e cbind() para construir matrizes a partir de vetores de
#diferentes classes (ex.: mat.2 e mat.4), todos os dados numéricos da matriz são convertidos em
#caracteres, fato evidenciado pelos números entre aspas na saída.


#a) Função rbind()

especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)
altura <- c(8.4, 8.7, 9.1, 13.2, 15.4)

mat.1<-rbind(diametro, altura)
print(mat.1)

mat.2<-rbind(especie, diametro)
print(mat.2)


#b) Função cbind()

mat.3 <- cbind(diametro, altura)
print(mat.3)

mat.4 <- cbind(especie, diametro, altura)
print(mat.4)


# c) Função matrix()

#A maneira mais prática para criar matrizes no R é usar a função matrix().

#matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)

#Onde:

#data = Um vetor de dados opcional;
#nrow = Número desejado de linhas;
#ncol = Número desejado de colunas;
#byrow = Argumento lógico. Se FALSE = DEFAULT (a matriz é preenchida por colunas). Se
#TRUE (matriz é preenchida por linhas); e
#dimnames = Insere os rótulos das linhas e colunas da matriz com a função list().

#Para facilitar a identificação pode-se atribuir rótulos às linhas e colunas da matriz. Para tanto,
#pode-se usar as funções rownames() e colnames() ou o argumento dimnames em matrix().


# Cria uma matriz de 1 a 6, com 2 linhas e 3 colunas

mat.5 <- matrix(1:6, nrow=2, ncol=3) 
print(mat.5)

# Atribui nomes às linhas e colunas da “mat.5”
rownames(mat.5) <- c("L1","L2") 
print(mat.5)

colnames(mat.5) <- c("C1","C2","C3")
print(mat.5)

# Pode-se usar objetos-vetores já existente na função matrix():
# Criar uma matriz a partir de objetos-vetores existente

especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")

diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)

mat.6 <- matrix(diametro, nrow=5, ncol=1, byrow = TRUE,
                dimnames = list(especie)); print(mat.6)


# Atribuindo nome a única coluna da matriz 6 usando colnames():

colnames(mat.6) <- "diâmetro"

print(mat.6)


# Atribuindo nomes às linhas e colunas com o argumento dimnames de matrix():

mat.7<-matrix(1:6, nrow=2, ncol=3, byrow = TRUE, 
              dimnames = list(c("L1", "L2"), 
                              c("C1", "C2", "C3")))
print(mat.7)

#### Situações especiais
#Na criação de matrizes é interessante atentar-se para algumas situações especiais:

#a) Descarte de elementos: Quando a quantidade de elementos em for > (ncol x nrow); e
#b) Regra da Reciclagem: Quando ncol x nrow for > do que a quantidade de elementos.

# Número de elementos > ncol x nrow (Descarte)
mat.8 <- matrix(1:9, nrow=2, ncol=3, byrow = TRUE, 
                dimnames = list(c("L1", "L2"), 
                                c("C1", "C2", "C3")))
print(mat.8)

# ncol x nrow > número de elementos (Reciclagem)
mat.9 <- matrix(1:6, nrow=3, ncol=3, byrow = TRUE, 
                dimnames = list(c("L1", "L2", "L3"), 
                                c("C1", "C2", "C3")))
print(mat.9)

#------------------------------------------------------------------------------------------
### Data frames

#O data frame é bastante similar a matriz, porém é capaz de reunir vetores de diferentes classes
#(naturezas) com a condição de possuírem igual comprimento. Para criar data frames diretamente no 
# R pode-se usar das funções data.frame() ou edit(). Em geral, quando importa-se dados para
# o R, oriundos de um arquivo .CSV ou .txt pelos comandos read.csv() e read.table(), respectivamente,
# o R armazena-os no formato de um data frame. Após, criar o data frame é interessante avaliar a sua 
# estrutura através das funções str() e dim(). A funcão str() retorna as colunas com suas respectivas 
# classes e número de observações por variável. Ainda, deve-se notar que a função data.frame() 
# transforma por default as variáveis qualitativas em fatores (classe factor) com a especificação da 
# quantidade de níveis (levels). Isso ocorre devido a argumentação stringsAsFactors da funcão data.frame()
# que possui como default transformar qualquer variável qualitativa em fator. Caso a transformação não 
# seja desejável basta usar o comando stringsAsFactors = FALSE. Assim, as variáveis qualitativas serão 
# mantidas no formato character.

#a) Função data.frame()

# Criar data frame a partir de vetores existentes
especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
length(especie)
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)
length(diametro)
altura <- c(8.4, 8.7, 9.1, 13.2, 15.4)
cortar <- c("Não", "Não", "Não", "Não", "Sim")

invFlor.1 <- data.frame(especie, diametro, altura, cortar,
                        stringsAsFactors = FALSE)
?data.frame

print(invFlor.1)
str(invFlor.1)

# Observe a ação de stringsAsFactors = TRUE: factor.
str(invFlor.1)

dim(invFlor.1)


# Cria data frame com apenas um comando
invFlor.2 <- data.frame(
  Especie = c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe"), 
  diametro = c(23.0, 27.0, 33.6, 42.6, 52.1),
  altura = c(8.4, 8.7, 9.1, 13.2, 15.4),
  cortar = c("Não", "Não", "Não", "Não", "Sim"),
  stringsAsFactors = FALSE)

print(invFlor.2)

# Observe a ação de stringsAsFactors = FALSE: character.
str(invFlor.2)

dim(invFlor.2)

#b) Função edit()
edit(data.frame())

#A função edit() pode ser usada para editar data frames já existentes, ou ainda, para iniciar uma
#tabulação de dados diretamente no R. Assim, ao executar o comando edit(data.frame()) será
#aberto um R Data Editor “vazio” permitindo a organização e tabulação de dados de modo similar
#ao Microsoft Excel.

#No entanto, se o data frame já existe, você terá a opção de editá-lo através do comando
#edit(nome_do_df), de tal modo que o data.frame será aberto no R Data Editor, admitindo a
#alteração ou correção de quaisquer informações que desejar.


# Crie um data frame com o comando edit() e atribua a "invFlor.3"
invFlor.3 <- edit(data.frame())

# Edite as informações do data frame “invFlor.2” e atribua a "invFlor.4"
invFlor.4 <- edit(invFlor.2)


### Listas

#Uma lista é um objeto que constituí uma coleção ordenada de objetos conhecidos. Um aspecto
#importante da lista é que admite diferentes estruturas (vetores, matrizes, data frames e, inclusive
# outras listas). A função list() é usada para criar uma lista. Se os objetos já existem pode-se
#simplesmente adicioná-los à função list().

#Diferentemente de data frames as listas admitem vetores de comprimentos distintos. O número de
#componentes de uma lista (nível superior) pode ser obtido usando a função length(nome_do_objeto).
#Os componentes de uma lista podem ser nomeados. Fazendo-se isso, o acesso aos seus componentes
#(nível superior) pode ser feito com uso de $ (dólar) ao invés de [[ ]] (colchetes duplos). Nomear os
#níveis superior da lista é bastante útil, pois facilita a identificação do componente a ser acessado
#por indexação. (estudaremos indexação de objetos mais adiante!)

#Função list()

#Pode-se criar uma lista a partir de objetos já existentes. A seguir um exemplo de lista cujos
#componentes são objetos-vetores:

# Cria objetos-vetores
especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)
altura <- c(8.4, 8.7, 9.1, 13.2, 15.4)

# lista sem atribuir nomes aos os objetos
list.1 <- list(especie, diametro, altura)
print(list.1)

length(list.1)

#Pode-se criar uma lista com diferentes classes de objetos. A seguir uma lista com três
#componentes: um vetor, uma matriz e um data frame:

# Uma lista com diferentes classes de objetos
list.2 <- list(diametro, mat.7, invFlor.1)
print(list.2)

length(list.2)

str(list.2)

#Os componentes de uma lista podem ser nomeados. Fazendo isso, a identificação e a 
#indexação dos componentes é facilitada.

# Uma lista de objetos-vetores (nomeados)
list.2 <- list(vetor = diametro, matriz = mat.7, 
               DF = invFlor.1)
print(list.2)

length(list.2)

list.3 <- list(Especie = especie, Diametro = diametro, 
               Altura = altura)
print(list.3)

length(list.3)

## Concatenando listas

#Quando a intenção é unir diferentes listas em um único objeto pode-se usar a função c(). O
#novo objeto criado será também uma lista, cujos componentes serão os mesmos dos objetos-listas
#concatenados e, dispostos na ordem dos argumentos repassados.

list.4 <- list(Especie = especie, Diametro = diametro)
print(list.4)

list.5 <- list(Altura = altura, Cortar = cortar)
list.5

list.6 <- c(list.4, list.5)

print(list.6)

#Lista PARA Data frame: Usar a função as.data.frame()

#Um objeto-lista pode ser coagido (transformado) em um data frame usando a função
#as.data.frame(), desde que as restrições de criação de data frames sejam satisfeitas. 
#Isto é, a lista a ser coagida deve possuir vetores de igual comprimento.

as.data.frame(list.6)

#------------------------------------------------------------------------------------------
# Indexação no R
#---------------------------------------------------------------------------
## Mecanismos de indexação

#Quando o interesse é **extrair**, **excluir** ou **substituir** elementos de objetos é possível fazê-lo usando-se de algum **mecanismo de indexação**, que dependerá do tipo de objeto manejado. Isto é, usa-se de um mecanismo de localização da posição do elemento.

#**O que signifa indexar?**

#Em termos gerais, existem seis modos de indexar valores no R:
  
#1. Nomes;
#2. Valores lógicos;
#3. Inteiros positivos;
#4. Inteiros negativos;
#5. Espaço em branco; e
#6. Zero.


#Para indexar elementos ou subconjuntos de objetos no R existem três operadores básicos: [ ], [[ ]] e
#$.

# O operador [ ] permite extrair múltiplos elementos de um objeto, e retornar um novo objeto
#de mesma classe.

#O operador [[ ]] permite extrair elementos de objetos do tipo lista ou data frames. A classe
#do objeto extraído não será, necessarriamente, uma lista ou data frame.

#O operador $ permite extrair componentes nomeados de uma lista ou data frame.

#------------------------------------------------------------------------------------------
## Indexação de vetores

### Extrair, excluir e substituir

#Para extrair, excluir ou substituir elementos no objeto-vetor usa-se o comando [ i ]. Onde o índice
#“i” indica a posição do elemento no objeto. O indice “i” inicia no valor 1. A função c() pode ser
#usada para concatenar as posições desejadas dentro de colchetes.

#a) Extração por indexação positiva: especifica (entre colchetes) os elementos a serem extraídos.

especie <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe")
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)

# Extraindo elementos (usando valores inteiros)

especie[2]                               # Um elemento.

diametro[1:3]                            # Múltiplos elementos (sequenciais).

especie[c(1,3,5)]                        # Múltiplos elementos (alternados).

diametro[seq(from = 1, to = 5, by = 2)]  # Múltiplos elementos usando seq ().


#b) Extração por indexação negativa: especifica (entre colchetes) os elementos a serem
#excluídos, retornando os demais. Deve-se usar o sinal negativo (-) para indicar o desejo de excluir
#um ou mais elementos do objeto-vetor [ -i ].

# Excluindo elementos (usando valores inteiros)

especie[-2]                             # Um elemento.

diametro[-(1:3)]                        # Múltiplos elementos (sequenciais).

especie[-c(1,3,5)]                      # Múltiplos elementos (alternados).

#c) Extração por indexação de strings (vetores nomeados): Este mecanismo apenas é possível
#quando o objeto-vetor possui um atributo de nomes para identificar seus elementos. Pode-se usar a
#função names() para atribuír nomes (rótulos) para cada elemento do objeto-vetor. A vantagem
#disso é facilidade de identificação dos elementos do objeto-vetor.


# Cria o vetor "altura"
altura <- c(1.52, 1.83, 1.74, 1.67, 1.98)
names(altura)

# Atribuindo nomes (labels) aos elementos do objeto-vetor
names(altura) <- c("João", "Maria", "José", "Pedro", "Tomé") 
names(altura)

# Extraindo elementos (usando nomes)
altura[c("Maria", "José")]    # Altura de pessoas específicas?


#d) Extração por indexação lógica: A extração de elementos no objeto-vetor pode ser feita com
#uso de operadores lógicos.

Especie <- c(NA, "Araucaria", "Mogno", "Cedro", "Ipe",
             "Tauari", "Jatoba", "Araucaria", "Acapu", NA)
Diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1,
              65.8, 79.6, 45.2, 50.0, 89.8)

# Extrai árvores que não sejam Araucaria
Especie[Especie != "Araucaria"]

# Diâmetros > 50cm.
Diametro[Diametro >= 50] 

#e) Substituição por indexação: Algumas vezes o interesse é substituir um ou mais elemento
#do objeto-vetor por outro.

Especie <- c(NA, "Araucaria", "Mogno", "Cedro", "Ipe", NA)
Diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)

# Substitui os NAs
is.na(Especie)
Especie[is.na(Especie)] <- "Não Identificada"
Especie[is.na(Especie)] <- "Não Identificada"
print(Especie)

# Altera o diâmetro da posição 3, e atribui 33,5cm.
Diametro[3] <- 33.5

# Altera os diâmetros das posições 4 e 5, e atribui 55,3cm e 63,4cm
Diametro[c(4, 5)] <- c(55.3, 63.4)

#------------------------------------------------------------------------------------------
### Comando especiais para vetores

#Função which(): Qual?

#which(x =? arr.ind = FALSE, useNames = TRUE)

#A função which() recebe e avalia expressões lógicas (objeto-vetor lógico) e, fornece a posição
#dos elementos em que a expressão lógica é verdadeira (TRUE). Os NAs são admitidos pela função,
#porém são tratados como FALSE.


alfa <- LETTERS
Especie <- c(NA, "Araucaria", "Mogno", "Cedro", "Ipe",
             "Tauari", "Jatoba", "Araucaria", "Acapu", NA)
Diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1,
              65.8, 79.6, 45.2, 50.0, 89.8)

which(alfa == "H")                    # posição da letra "H" no alfabeto

which(Especie == "Mogno")             # posição do "Mogno"

which(Diametro >= 50 | Diametro < 25) # posição de árvores com 50 <= d < 25


#Função which.min(): Qual posição do valor mínimo?
#Função which.max(): Qual posição do valor máximo?
#Função unique(): Recebe um objeto-vetor e, retorna um vetor sem repetições.

which.max(Diametro)

which.min(Diametro)

unique(Especie)

#------------------------------------
#Comando %in%
#É um operador binário, que retorna um vetor boleano (lógico) de tamanho sempre igual ao
#vetor-esquerdo com indicativo das correspondências verdadeiras (TRUE).

Esp.1 <- c("Acapu", "Araucaria", "Mogno", "Cedro", "Tauari")
Esp.2 <- c("Angelim", "Araucaria", "Tauari")
Diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1)

# vetor direito está contido no esquerdo?
Esp.1 %in% c("Mogno", "Cedro")    
Esp.1 %in% Esp.2
Esp.2 %in% Esp.1

#-----------------------------------------------------------------------------------------
## Indexação de matrizes

### Extrair, excluir e substituir

#Para extrair, excluir ou substituir elementos de uma matriz usa-se o comando [ i, j ]. Onde o índice
#“i” indica linhas e “j” indica as colunas da matriz.

#Se o argumento for do tipo [ i, ] ter-se-á acesso a todos os elementos da linha “i” especificada.

#Se o argumento for do tipo [ , j] ter-se-á acesso a todos os elementos da coluna “j” especificada.

#Se nem o número linha e nem o número da coluna é informado: [ , ]. A matriz é acessada
#por completa.

#Por exemplo, em uma matriz “x” o elemento situado na 1ª linha da 1ª coluna pode ser representado
#por x11, e pode ser acessado fazendo: x[ 1, 1 ]

#-------------------------------------
#a) Extraindo elementos: Usa-se indexação positiva.

mat <- matrix(1:6, nrow=2, ncol=3, byrow = TRUE, 
              dimnames = list(c("L1", "L2"), 
                         c("C1", "C2", "C3")))
mat
# Extraindo elementos

mat[2,2]                      # elemento da linha 2 e coluna 2.

mat[2, ]                      # todos elementos da linha 2.

mat[, 3]                      # todos elementos da coluna 3.

mat[c(1,2), c(2,3)]           # elementos de L1 e L2, e C2 e C3.

#-------------------------------------
#b) Excluindo elementos: Usa-se indexação negativa.
mat <- matrix(1:6, nrow=2, ncol=3, byrow = TRUE, 
              dimnames = list(c("L1", "L2"), 
                              c("C1", "C2", "C3")))
print(mat)

# Excluindo elementos

mat[,c(-1,-3)]                # exclui as colunas 1 e 3.

mat[-2,-1]                    # exclui a linha 2 e a coluna 1.


#-------------------------------------
#c) Substituindo elementos
mat <- matrix(1:6, nrow=2, ncol=3, byrow = TRUE, 
              dimnames = list(c("L1", "L2"), 
                              c("C1", "C2", "C3")))
print(mat)

# substitui o elemento da posição 1, por zero.
mat[1, 1] <- 0
print(mat)   

# substitui os elementos das posiçoes 1 e 5, por zero.
# Obs.: observe a forma de contagem das posições!
mat[c(1,4)]
mat[c(1,5)] <- c(0,0)
print(mat)  

#-----------------------------------------------------------------------------------------
## Indexação de data frames

### Extrair, excluir, substituir

#O acesso a um determinado vetor em um data frame pode ser realizado utilizando-se do comando
#[ ] (similar às matrizes) ou dos comandos [[ ]] e $ (similar às listas). As funções attach()
#(attachment) e with() podem ser usadas para facilitar o acesso a esses vetores.

invFlor.2 <- data.frame(
  especie = c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe"), 
  diametro = c(23.0, 27.0, 33.6, 42.6, 52.1),
  altura = c(8.4, 8.7, 9.1, 13.2, 15.4),
  cortar = c("Não", "Não", "Não", "Não", "Sim"),
  stringsAsFactors = TRUE)

print(invFlor.2)

#-------------------------------------
#Comandos [ ] e [[ ]]

invFlor.2[2,1]                                    # similar as matrizes

invFlor.2[[2,1]]                                  # similar as listas

invFlor.2[ , c(1,2,4), drop=FALSE]                 # drop = FALSE

invFlor.2[c(1,2), c("especie","diametro")]        # mais específico

#-------------------------------------
#Comando $

invFlor.2$diametro              # acessa a coluna diâmetro.

invFlor.2$cortar                # acessa a coluna cortar.

# acessa a coluna cortar e extrai os elementos da posição 4 e 5.
invFlor.2$cortar[c(4,5)] 

#-------------------------------------
#Usando operadores lógicos
  
#Os operadores lógicos podem ser usados para extrair informações específicas do data frame.
# Inicialmente, observar-se-á o retorno boleano (**TRUE** ou **FALSE**):

# Quais valores de altura são maiores do que 10m?
invFlor.2$altura > 10

# Quais valores de diâmetro são maiores ou iguais a 50cm?
invFlor.2$diametro >= 50

# Quais árvores possuem “Sim” para “Corte”?
invFlor.2$cortar == "Sim"


#No entanto, na maioria das vezes deseja-se extrair os elementos:

# Quais valores de altura são maiores do que 10m?
invFlor.2[invFlor.2$altura > 10, ]

# Quais valores de diâmetro são maiores ou iguais a 50cm?
invFlor.2[invFlor.2$diametro >= 50,]

# Quais árvores possuem “Sim” para “Corte”?
invFlor.2[invFlor.2$cortar == "Sim",]

# Extrai árvores com diâmetros < 50cm e não disponíveis p/ corte
invFlor.2[invFlor.2$diametro < 50 & invFlor.2$cortar == "Não", ]


#-----------------------------------------------------------------------------------------
### Adicionar colunas e linhas

## Adicionando colunas ao DF

# Adicionando a coluna “Protegida”
protegida <-  c("Sim", "Sim", "Sim", "Não", "Não")
invFlor.2$protegida <- protegida
print(invFlor.2)

#-------------------------------------
#Adicionando linhas ao DF

# Para adicionar linhas a um data frame há uma restrição: “não é possível adicionar novos níveis de
# fator para vetores da classe factor. Para exemplificar, tentar-se-á inserir o seguinte vetor-linha:
#(”Castanha“, 150.9, 25.6,”Não“,”Sim“) na linha 1. No entanto, antes estudaremos alguns pontos:

#1) A coluna “espécie” pertence a classe factor e, originalmente, não possui o nível de fator
#“Castanha”; e

#2) A coluna “cortar” pertence a classe factor e, originalmente, já possui o nível de fator “Não”.

#O que aconteceu?

#Aparecerá uma mensagem de erro atestando que o nível de fator “Castanha” é inválido. Isto
#porque, a espécie “Castanha” não existe no data frame original, sendo considerada um novo nível
#de fator. Assim, NA será impresso no lugar do nome da “Castanha”.

#Idealmente, para evitar problemas deste tipo, pode-se manter todas as colunas qualitativas como
#character. Para tanto, deve-se usar o argumento stringsAsFactors = FALSE.

str(invFlor.2)

invFlor.2[1,] <- c("Castanha", 150.9, 25.6, "Não", "Sim")
print(invFlor.2)

invFlor.2$especie <- as.character(invFlor.2$especie)

invFlor.2[1,] <- c("Castanha", 150.9, 25.6, "Não", "Sim")

print(invFlor.2)


### Funções attach(), detach() e with()

#-------------------------------------
##Função attach()

#A função attach() oferece acesso direto aos vetores do data frame. Para finalizar seu uso deve-se
#utilizar a função detach().
invFlor.2$diametro
diametro

attach(invFlor.2)
diametro              # acessa direto ao diâmetro.

cortar                # acessa direto a coluna cortar.
detach(invFlor.2)

#-------------------------------------
#Função with()

# acessa coluna especie
with(invFlor.2, especie)

# acessa elementos específicos na coluna
with(invFlor.2, especie[4:5])   

# pode-se usar para aplicar funções
with(invFlor.2, mean(altura))

#-------------------------------------
### Função subset()

#Função subset(): Extrai um subconjunto de vetores, matrizes e data frames que atendem às
#condições.

#A função subset() também pode ser usada para extrair elementos de um data frame usando de
#operadores lógicos. Para estudar a função usar-se-á do famoso conjunto de dados de flores de iris
#(iris data set). O conjunto de dados é composto de 150 observações (instâncias) e 5 variáveis
#(Sepal.Length, Sepal.Width, Petal.Length e Petal.Width, Species), de 50 flores de cada
#espécie de íris (Iris setosa, Iris versicolor e Iris virginica).


data("iris")
head(iris)
tail(iris)
str(iris)
dim(iris)


# flores com Sepal.Length > 7.5, mantendo as colunas Species e Sepal.Length.
subset(iris, Sepal.Length > 7.5, select = c(Species, Sepal.Length))

# flores de setosa com Sepal.Width < 3, mantendo as colunas 
# Species e Sepal.Width.
subset(iris, Species == "setosa" & Sepal.Width < 3, 
       select = c(Species, Sepal.Width))


#-------------------------------------
### Função split()
#A divisão de data frames pode ser realizada por meio da função split(). Para tanto, sirva-se de
#dois argumentos básicos: i) data frame que se almeja dividir; ii) fator a ser considerado para a
#divisão.

protegida <- split(invFlor.2,invFlor.2$protegida)

print(protegida)


#----------------------------------------------------------------------------------------
## Indexação de listas
#A indexação de lista pode ser feita com uso dos comando [[ ]] e $. Ainda, para acessar subíndices
#dos componentes da lista pode-se fazer: [[ ]][ ]. Para exemplificar, considere a lista “list.2” que
#contém 3 componentes (vetor, matriz e DF):

# Uma lista cujos componentes não estão nomeados
list.2 <- list(diametro, mat.8, invFlor.1)

print(list.2)

list.2[[2]]             
list.2[[3]]

list.2[[2]][1,]         

list.2[[3]][diametro > 50 & cortar == "Sim", ]

#-------------------------------------
#Se a lista tiver seus componente nomeados o acesso é facilitado pelo uso do comando $.

list.2 <- list(diametro=diametro, matriz=mat.8, DF=invFlor.1)

print(list.2)

list.2$diametro           
list.2$DF

list.2$matriz[1,]

list.2$DF[diametro > 50 & cortar == "Sim", ]

#-------------------------------------
#Substituindo elementos de componentes da lista

# substitui por 50 e 60 no diâmetro
list.2$diametro[c(3,5)] <- c(50, 60)

print(list.2)


#Excluindo componentes da lista

list.2$DF <- NULL          # excluindo todo componente DF
print(list.2)

# excluindo colunas 2 e 3 do componente matriz
list.2$matriz <- list.2$matriz[,-c(2,3)]
print(list.2)


#----------------------------------------------------------------------------------------
# Criando funções no R

#O ambiente R possui muitas funções interativas e prontas disponíveis em inúmeros pacotes,
#para o uso fácil e prático pelos usuários. Não obstante, em algumas situações pode-se desejar criar
#a própria função. Para tanto, deve-se utilizar a função function(){} disponível no R-base 
#(RCORE TEAM, 2017). Entre parênteses devem ser inseridos os argumento(s) da função, sobre
#os quais irá trabalhar o código descrito entre chaves {}. Opcionalmente, no escopo da função
#pode-se usar a função return(), e especificar entre os parênteses a(s) saída(s) desejada(s) ao se
#aplicar a função.

#Sintaxe
function(arglist = arg1, arg2, ..., argn){
  expr
  return(value)
}

#arglist = um argumento ou lista de argumentos sobre o(s) qual(is) irá atuar o código expr;
#expr = uma expressão ou código a ser usado sobre os argumentos da função;
#return = função que específica o retorno da função; e
#value = uma expressão que representa a saída desejada.

#-------------------------------------
#1. Criando uma função para obter a média aritmética de um vetor x qualquer.

mean(diametro)
length(diametro)
sum(diametro)
sum(diametro)/length(diametro)

Media <- function(x){
  n = length(x)
  Soma=sum(x)
  Media=Soma/n
  
  return(c(n=n,Media=Media,Soma=Soma))                                
}


#Dado um objeto-vetor de diâmetros de árvores pode-se calcular a média usando a função:

diametro <- c(23.4, 54.3, 45.1, 67.1, 34.7)
Media(diametro) 

#-------------------------------------
#2. Criando uma função para obter o coeficiente de variação de um vetor x qualquer.

CV <- function(x){
  Media = sum(x)/length(x)
  DP = sqrt(sum((x-mean(x))^2)/(length(x)-1))
  CV = (DP/Media)*100
  
  return(CV)                                                                            
}


#Para o mesmo vetor de diâmetros de árvores pode-se calcular o CV:

CV(diametro)

#-------------------------------------
#3. Criando uma função para obter várias estatísticas descritivas:

descritivas.1 <-
  function(x){
    n <- length(x)
    Soma <- sum(x)
    Media <- round(sum(x)/n, digits=2)
    Variancia <- var(x)
    DP <- round(sd(x), digits=2)
    CV <- round((DP/Media)*100,digits=2)
    Minimo <- min(x)
    Quartil1 <- quantile(x,0.25)
    Mediana <- median(x)
    Quartil3 <- quantile(x,0.75)
    Interquatil <- Quartil3-Quartil1
    Maximo <- max(x)
    
    return(list(n=n,Media=Media,DP=DP,CV=CV,Min=Minimo,
                Q1=Quartil1,Md=Mediana,Q3=Quartil3,
                Interquatil=Interquatil,Max=Maximo))
  }

descritivas.1(x=trees$Volume)
trees
#Mas, seria possível criar uma função para retornar várias estatísticas para diversas variáveis
#simultâneamente? Agora, é apresentada uma função que faz exatamente isso. Assim, pode-se usar
#uma function(){} no argumento FUN da função apply(). Além disso, MARGIN é definida
#com inteiro igual a 2, para que a função em FUN seja aplicada às colunas do data frame.

descritivas.2 <- 
  apply(trees,MARGIN = 2, FUN = 
          function(x){
            n <- length(x)
            Soma <- sum(x)
            Media <- round(sum(x)/n, digits=2)
            Variancia <- var(x)
            DP <- round(sd(x), digits=2)
            CV <- round((DP/Media)*100,digits=2)
            Minimo <- min(x)
            Quartil1 <- quantile(x,0.25)
            Mediana <- median(x)
            Quartil3 <- quantile(x,0.75)
            Interquatil <- Quartil3-Quartil1
            Maximo <- max(x)
            
            return(list(n=n,Media=Media,DP=DP,CV=CV,Min=Minimo,
                        Q1=Quartil1,Md=Mediana,Q3=Quartil3,
                        Interquatil=Interquatil,Max=Maximo))
          })

descritivas.2


#Pode-se melhorar a saída das estatísticas:

do.call(rbind, descritivas.2)


#----------------------------------------------------------------------------------------
# Estruturas de controle

## Instrução condicional

### Comandos if, if-else e if-elseif-else
#De modo geral, pode-se identificar três principais variações de instruções condicionais, isto é, if, ifelse
#e if-elseif-else. A estrutura if(){} condiciona a execução de uma lista de instruções (código)
#em função de uma condição booleana (verdadeira ou falsa). Assim, a aplicação da condicional
#if(){} requer duas argumentações básicas: a) a condição a ser satisfeita, descrita entre parênteses;
#e b) uma ou mais instrução(ões), expressas entre chaves {}, que deverão ser executadas caso a
#condição booleana seja verdadeira. Para mais informações faça ¿‘if”.

#Alternativamente, a condição if() pode ser usada em conjunto com else{}. Neste caso, tem-se
#a seguinte estrutura: if(){} else{}. Assim, a condição será examinada a cada passagem pela
#estrutura if(), caso seja satisfeita (VERDADEIRA) a lista de instruções entre chaves será executada.
#Do contrário, se for FALSA, será executado o código atribuído ao comando else{}. A instrução
#if(){} elseif(){} else{} é outra variação da estrutura condicional if(), sendo usada quando se
#deseja executar mais de uma condicional através de instruções aninhadas. Deve-se atentar para o
#cuidado de saber a qual if() está atrelado cada else{}.

#Como usar a instrução condicional?



#Uso da instrução if(){}

x <- 9
if (x < 10){                 # Se =  "x" < 10    
  print(x)                   # Imprima = "x"
  print("É menor do que 10") # Faça = imprima "É menor do que 10"
}

# Uso da instrução if(){} else{}

x <- 11
if (x <= 10){                     # Se =  "x" <= 10
  cat("É menor ou igual a 10")    # Imprima = "É menor ou igual a 10"
}else{                            # do contrário
  cat("É maior do que 10")        # Imprima = "É maior do que 10"
}

# Uso da instrução if(){} elseif(){} else{} - ifs aninhados

x <- 9
if (x == 10){                     # Se =  "x" == 10
  print("É igual a 10")           # Imprima = "É igual a 10"
} else if (x > 10) {              # Se =  "x" > 10
  print("É maior do que 10")      # Imprima = "É maior do que 10"
} else {                          # do contrário
  print("É menor do que 10")      # Imprima = "É menor do que 10"
}

# As instruções condicionais podem ser usadas dentro de funções:

dap1 <- 64
dap2 <- 43

categoria <- function (x)
  if (x >= 50){
    print(paste("Cortar =", x))
  } else {
    print(paste("Protegida =", x))
  }

categoria(dap1)
categoria(dap2)

#Em outras situações, pode-se requerer usar alguma das 3 variações de instrução condicional a
#um vetor numérico, porém ocorrerá uma menasagem de erro alertando que a condição do if() tem comprimento maior do que 1, e somente o primeiro elemento do vetor será considerado para
#execução do código. Isto é, o uso das variações if() está condicionado a vetores de comprimento
#igual a um, não podendo ser um NA. Para fns ilustrativos, a seguir criou-se um vetor x qualquer
#com seis elementos e, em seguida foi elaborada uma estrutura condicional com a seguinte condição
#booleana if(x == 10), que se verdadeira retorna “É igual a 10”. De fato, o desejável seria que a
#condição booleana fosse avaliada para cada elemento do vetor x, porém isso não acontece. Ao
#executar o comando surge uma mensagem de erro informando que a condição tem comprimento
#maior do que 1 e somente o primeiro elemento do vetor x será usado, ou seja, a condição booleana
#foi avaliada apenas para o número 10, cujo retorno é “É igual a 10”. Assim, caso a intenção seja
#aplicar uma condicional a um vetor de comprimento maior do que 1 deve-se utilizar da função
#ifelse().

x <- c(10, 9, 8, 10, 15, 16)
if (x == 10){
  print("É igual a 10")
}else{
  print("Não é igual a 10")
}


### Comando ifelse()
#Quando o interesse é operar sobre vetores de comprimento maior do que 1, a alternativa é usar a
#função vetorizada ifelse(). Assim, a condição booleana opera sobre cada elemento do vetor:

#Sintaxe
#ifelse(test = ?, yes = ?, no = ?)

#test = um objeto que pode ser coagido para o modo lógico;
#yes = instrução a ser retornada quando a condição for VERDADEIRA; e
#no = instrução a ser executada quando a condição for FALSA.

#Retornando, ao exemplo do vetor numérico x será usada a função ifelse():

x <- c(10, 9, 8, 10, 15, 16)
ifelse(test=(x == 10), yes="É igual a 10", no="Não é igual a 10")


#O exemplo a seguir simula uma situação de análise de um censo florestal para fins de licenciamento
#de Plano de Manejo Florestal Sustentável (PMFS). A ideia é identificar as árvores passíveis de
#exploração legal, considerando apenas dois critérios: 

#a) o atendimento ao diâmetro mínimo de corte (DMC  50 cm) (BRASIL, 2009); e 

#b) se a espécie é protegida por lei. Agora ao invés de um simples vetor tem-se um 
#data frame com quatro variáveis.

invFlor.3 <- data.frame(
  especie = c("Acapu", "Araucaria", "Mogno", "Cedro", "Ipe"), 
  diametro = c(23.0, 27.0, 33.6, 42.6, 52.1),
  altura = c(8.4, 8.7, 9.1, 13.2, 15.4),
  protegida = c("Sim", "Sim", "Sim", "Não", "Não"),
  stringsAsFactors = FALSE)

# solução
ifelse(test=(invFlor.3$diametro >= 50 & invFlor.3$protegida == "Não"), 
       yes="Pode Explorar", no="Não Pode Explorar")


## Estruturas de repetição

#Em algumas situações você pode se deparar com a necessidade de executar um mesmo código ou
#parte de um código repetidamente, ou mesmo, até que uma determinada condição seja satisfeita. No
#entanto, reescrever um código várias vezes pode ser bastante trabalhoso e, em certas circunstâncias
#impraticável. Assim, pode-se usar de estruturas de controle de fluxo disponíveis no R-base. Tais
#estruturas possibilitam ao usuário executar repetidas vezes algum trecho ou o código inteiro de um
#algoritmo, sob ou não determina(s) condição(ões). Para tanto, cria-se looping (laços de repetição)
#para que a repetição seja executada tantas vezes quanto forem necessárias. Os principais comandos
#de controle de fluxo no R são: i) while (enquanto); ii) for (para); e iii) repeat (repita). Para
#saber mais sobre controle de fluxo no R digite: ?Control.


#---------------------------------
### Comando while()
#O comando while (enquanto) é uma estrutura de controle de fluxo no R que tem a seguinte
#estrutura: while(){}. O comando inicia com a inserção de uma condição booleana entre
#parênteses. Em seguida o código é descrito entre chaves, o qual será executado repetidamente
#ENQUANTO a condição booleana for VERDADEIRA.


# Aplicando o comando while(){}

x <- 2          # um escalar "x" (valor inicial das sucessivas iterações),
while(x < 10){  # enquanto = "x" for < 10 (condição booleana),
  x <- x+2      # faça = x+2 enquanto a condição x < 10 seja verdadeira,
  print(x)      # imprima = reporte os resultados das iterações de x+2,
}               # fim Enquanto


#Pulando um laço do loop while(){} – Usando o argumento next na condicional if(){}:

x <- 2           # um escalar "x" (valor inicial das sucessivas iterações),
while(x < 10){   # enquanto = "x" for < 10 (condição booleana),
  x <- x+2       # faça = x+2 enquanto a condição x < 10 seja verdadeira,
  if(x==8){next} # se, próximo = pule o laço se x == 8, ainda sim faça x+2,
  print(x)       # imprima = reporte os resultados das iterações de x+2,
}                # fim Enquanto


#Quebrando um laço do loop while(){} – Usando o argumento break na condicional if(){}:

x <- 2            # um escalar "x" (valor inicial das sucessivas iterações),
while(x < 10){    # enquanto = "x" for < 10 (condição booleana),
  if(x==8){break} # se, quebre = Pare de executar x+2, se x == 8,
  x <- x+2        # faça = x+2 enquanto x < 10 e, se x == 8 seja verdade,
  print(x)        # imprima = reporte os resultados das iterações de x+2,
}                 # fim Enquanto


#----------------------------------------------------------------------------------------
### Comando for()
#O comando for() (para) é uma estrutura de controle de fluxo no R, que for() inicia com a
#especificação, entre parênteses, do nome da variável de iteração e do vetor ou lista de elementos.
#Em seguida, entre chaves descreve-se o bloco de códigos que será executado a cada iteração (loop).

#Sintaxe
for(variável in sequência){código}

#variável = nome da variável de iteração;
#sequência = vetor ou lista de valores com i elementos; e
#código = código a ser repetido sob cada elemento i da sequência, a cada iteração.
#O pacote magicfor (MAKIYAMA, 2016) dispõe de funções interessantes para armazenar os
#resultados das iterações dos loops for(). A seguir a implementação de um loop e criação de
#um data frame com a função magic_result_as_dataframe(). No data frame é adicionada a
#variável de iteração i e os resultados da operação i3:

library(magicfor)                      # load library
magic_for(func = print, silent = TRUE) # call magic_for()

for(i in 1:4){              # para = cada elemento “i” do vetor 1:4,
  cub <- i^3                # calcule: “i^3” e add ao objeto "cub",
  print(cub)                # faça = imprima o objeto "cub",
}                           # fim Para
magic_result_as_dataframe() # um df com os resultados das iterações.


#O comando a seguir produz o mesmo efeito:

x <- c(1, 2, 3, 4)          # cria um vetor "x" para ser usado em seq,

for(i in x){                # para = cada elemento “i” do vetor "x",
  cub <- i^3                # calcule: “i^3” e add ao objeto "cub",
  print(cub)                # faça = imprima o objeto "cub",
}                           # fim Para
magic_result_as_dataframe() # um df com os resultados das iterações.


# Cria um vetor x a ser inserido em seq e imprime i^3 e i*i:
x <- c(1, 2, 3, 4)          # cria um vetor "x" para ser usado em seq,

for(i in x){                # para: cada elemento “i” do vetor "x",
  cub <- i^3                # faça:calcule i^3 e add ao objeto "cub",
  prod <- i*i               # faça: calcule i*i e add ao objeto "prod",
  put(cub, prod)            # armazene: os valores da iteração,
}                           # fim Para
magic_result_as_dataframe() # um df com os resultados das iterações.

# Finaliza o pacote magicfor...
magic_free()

#----------------------
#Cria um vetor x vazio e atribui-se o resultado do produto (i*i) às posições i do vetor.
#É interessante observar o que acontece quando executa-se a função dentro e fora do comando.
#Para o exemplo, quando usada a função print() dentro do loop obtêm-se o retorno do
#vetor x após cada iteração i. Do contrário, imprimindo fora do loop obtêm-se apenas o vetor x final.

x <- numeric(0)       # cria um vetor numérico “x” vazio,

for(i in 1:6){        # para: cada elemento "i" na seq. de 1 a 6,
  x[i] <- i*i         # faça: calcule i*i e adicione ao vetor "x",
  print(x)            # imprima = o vetor "x" ao fim de cada iteração,
}                     # fim Para

print(x)              # imprima o vetor "x" final.


#Usando os elementos do vetor **x** para obter $i^2$, e adicionando os resultados ao 
#vetor **y**:

x <- c(1, 2, 3, 4)    # cria: um vetor numérico “x” qualquer,
y <- numeric(0)       # cria: um vetor numérico “y” vazio,

for(i in x){          # para: cada elemento "i" em "x",
  y[i] <- x[i]^2      # faça: calcule x[i]^2 e adicione ao vetor "y",
  print(y)            # imprima: o vetor "y" ao fim de cada iteração,
}                     # fim Para

print(y)              # imprima: o vetor "y" final.


#O mesmo resultado é alcançado usando-se a função append() bastando informar os parâmetros
#x (vetor que receberá os elementos de values) e values (valores que devem ser anexados ao vetor x).

y <- c()                    # cria: um vetor “y” vazio,
for(i in 1:4){              # para: cada elemento "i" na seq. 1:4,
  y <- append(x = y, 
              values = i^2) # faça: calcule i^2 e anexe a "y",
  print(y)                  # imprima: o vetor "y" ao fim de cada iteração,
}                           # fim Para

print(y)                    # imprima: o vetor "y" final.


#Condicional if(){} dentro do comando for() - para caso de vetores:

x <- c(10, 9, 15, 16)           # cria: um vetor numérico “x” qualquer,

for(i in x){                    # para: cada elemento "i" em "x",
  if (i == 10){                 # se: "i" for = 10,
    print("É igual a 10")       # imprima: "É igual a 10",
  }else{                        # do contrário,
    print("É diferente de 10")  # imprima: "É diferente de 10",
  }                             # fim Se
}                               # fim Para


#Aplicando loops aninhados (consecutivos) com o comando for(). No exemplo, é criada uma
#matriz a partir do produto de duas sequências: (1,2,3) e (1,2), cujos elementos constituintes
#são representados por i e j, respectivamente. O resultado do produto é adicionado a uma matriz:

matrix <- matrix(nrow = 3, ncol = 2)

for(i in 1:3){
  for(j in 1:2){
    matrix[i,j] = i*j
  }
}
matrix

#------------------------------------------------------------------------------------------
# Gerando de amostras aleatórias

#A função sample() permite gerar amostras aleatórias de um determinado vetor ou conjunto de
#dados, com ou sem reposição dos elementos sorteados. Ao usar a função sample() é necessário usar
#conjuntamente a função set.seed() para garantir a reprodutibilidade dos números aleatorizados.
#Caso não seja feito, a cada execução da função um novo conjunto de amostras aleatórias será
#gerado. Os principais argumentos:

#Sintaxe

#sample(x = ?, size = ?, replace = ?, prob = ?)

#x = um vetor de um ou mais elementos de onde deverá ser retirada a amostra ou um inteiro
#positivo;

#size = número não negativo e inteiro, referente ao tamanho da amostragem a ser gerada;

#replace = argumento informando se a amostragem deve ser feita com reposição ou não. O default
#é FALSE (sem reposição); e

#prob = vetor de probabilidades para obtenção dos elementos do vetor x que será amostrado. O
#default é NULL.

#Usando a função sample()

#1. Gerar uma amostra aleatória de 10 números inteiros, sem reposição, no intervalo de 0 e 100.

set.seed(1)
sample(x=0:100, size=10)


#2. Gerar uma amostra aleatória de 15 números inteiros, sem reposição, do vetor **x**.
set.seed(2)
x <- seq(from=1, to=50, by=1)                                                               
sample(x=x, size=15)


#3. Gerar uma amostra aleatória de 5 números, com reposição, entre os possíveis 
#resultados de lançamentos de um dado.
set.seed(3)
sample(x=1:6, size=5, replace = TRUE)


#4. Gerar uma amostra aleatória de 6 números, sem reposição, entre os possíveis resultados de lançamentos de um dado.
set.seed(4)
sample(x=1:6, size=6, replace = FALSE)


#5.Gerar uma amostra aleatória, sem reposição, a partir do vetor de caractere de 6 espécies florestais.
set.seed(5)
Especie <- c("Acapu", "Angelim Pedra", "Timborana", "Maparajuba", 
             "Ipê Amarelo", "Jatobá")
sample(x=Especie, size=6, replace = FALSE)


#6.**Gera um erro**: quando **replace** = FALSE, o tamanho da amostra (size) não pode 
#ser maior do que a população em **x**.
set.seed(6)
Especie <- c("Acapu", "Angelim Pedra", "Timborana", "Maparajuba", 
             "Ipê Amarelo", "Jatobá")
sample(x=Especie, size=7, replace = FALSE)


#7. Gerar uma amostra aleatória de 50 diâmetros de árvores, com reposição, do vetor 
#**diametro**.
set.seed(7)
diametro <- c(23.0, 27.0, 33.6, 42.6, 52.1, 63.2)
sample(x=diametro, size=50, replace = TRUE)


#8. Gerar uma amostra aleatória dos elementos de um data frame e, em seguida, separa 
#em dados em treino e validação (procedimento comum em aprendizado de máquina). 

#Para fins didático, usar-se-á o conjunto de dados trees que contém informações de circunferência,
#altura e volume de 31 árvores de Cerejeira. Assim, a função sample() será escrita com a seguinte

#sintaxe:

#x = recebe os inteiros que representam os dois conjuntos de dados (1 e 2);
#size = recebe o número de linhas (nrow) do conjunto de dados;
#replace = TRUE, atribui um 1 ou um 2 a uma determinada linha; e
#prob = recebe um vetor de probabilidade (0,7 e 0,3).
#Definindo-se replace = TRUE permite-se que a cada novo sorteio atribua-se 1 ou 2 as linhas do
#data.frame, até que o vetor de probabilidades de 0,7 e 0,3 sejam satisfeitos, ou fiquem próximo do
#desejado.

set.seed(8)
data(trees)
str(trees)

amostra.aleatoria <- sample(x=1:2, 
                            size=nrow(trees), 
                            replace=TRUE, 
                            prob=c(0.7, 0.3))
amostra.aleatoria
table(amostra.aleatoria)
round(prop.table(table(amostra.aleatoria)), digits = 2)


#Ao imprimir o objeto amostra.aleatoria o sorteio realizado será evidenciado pelos números
#inteiros (1 e 2) definidos no argumento x. É possível perceber também a ação do argumento
#prob no processo de amostragem. Cada valor 1 e 2 receberá uma linha do conjunto de dados trees, 
#seguindo a ordem sequencial de sua ocorrência no objeto amostra.aleatoria.
#Por exemplo, as árvores situadas nas linhas 3, 6, 8, 9, 16, 26 e 3 constituirão o 
#conjunto de valiadação.

which(amostra.aleatoria %in% 1)     #árvores da amostra de treino.
which(amostra.aleatoria %in% 2)     #árvores da amostra de validação.

treino <- trees[amostra.aleatoria==1,] 
str(treino)

validacao <- trees[amostra.aleatoria==2,] 
str(validacao)


#-------------------------------------------------------------------------------------------
# Família da função “apply()”
#--------------------------------------------------------------------------------------------
## - Quais tipos?
# As funções da família apply(), presentes no package R-base, são usadas como recurso para 
# evitar o uso de "loops", tendo o objetivo principal de aplicar uma função, repetidas vezes, 
# às partes desejadas (linhas e/ou colunas) de um objeto. As principais são: apply, tapply, 
# lapply, sapply, mapply.

### A funcão apply()

#Em algumas situações você pode desejar aplicar uma função, por exemplo, para calcular a 
#média de linhas e/ou colunas de um array, matriz ou data frame. De certo, você poderá 
#utilizar diversos recursos, tais como as funções rowMeans(nome do objeto) e 
#colMeans(nome do objeto), ambas funções retornaram as médias de linhas e colunas. 

#No entanto, alternativamente pode-se usar a função apply() para a mesma finalidade, 
#cujas argumentações seguem a ordem: 1) indicar o array, matriz ou data frame “X” sobre 
#o qual deseja aplicar a função; ii) indicar o argumento MARGIN, isto é, 1 e/ou 2 
#(1 = aplica a funcão nas linhas; 2 = aplica a funcão nas colunas; e c(1,2) = opera sobre
# as duas dimensões); e iii) indicar a funcão (FUN) a ser aplicada a cada linha e/ou 
# coluna. 

# Para exemplificar, considere a “matriz.x” com 2 linhas (nrow=2) e 3 colunas (ncol=3). 
# Imagine que você deseja calcular as somas e médias por linhas e colunas. Inicialmente,
# você pode optar por um procedimento mais delongado, isto é, usar as funções sum() e 
# mean() e calcular as somas e médias, uma por uma, para cada linhas e coluna da 
# “matriz.x”. Contudo, esta opção pode ser “maçante” à medida que se aumenta a 
# quantidade de linhas e colunas para cálculo. Assim, a funcão apply() constitui uma 
# alternativa mais prática e menos “entediante” quando se deseja aplicar funções em 
# matrizes, com retornos marginais. No argumento “FUN” podem ser usadas funções padrões 
# do R (min(), max(), mean(), median(), sum(), sd(), var(), entre outras), ou ainda, 
# uma função específica construída pelo usuário.

#---------------------------------------
# Como usar a funcão apply()?

SINTAXE: apply(X, MARGIN, FUN, ...)

#X = um array (incluindo a matriz) sobre o qual será aplicada a função FUN;

#MARGIN = vetor sobre o qual será aplicada a função especificada. Se 1 (aplica a funcão 
#nas linhas), caso for 2 (aplica a funcão nas colunas). Pode-se concatenar c(1,2) e aplicar a função nas linhas e colunas, concomitantemente;

#FUN = funcão a ser aplicada na matriz “X”;

#... = argumentos opcionais para a funcão FUN.

#Criando uma matriz
matriz.x<-matrix(1:6, nrow=2, ncol=3, byrow = TRUE, 
                   dimnames = list(c("L1", "L2"),
                                   c("C1", "C2", "C3")))
matriz.x


#Procedimento mais delongado
(SumLin.1<-sum(matriz.x[1,]))

(SumLin.2<-sum(matriz.x[2,]))

(SumCol.1<-sum(matriz.x[,1]))

(SumCol.2<-sum(matriz.x[,2]))

(SumCol.3<-sum(matriz.x[,3]))

(MeanLin.1<-mean(matriz.x[1,]))
(MeanLin.2<-mean(matriz.x[2,]))
(MeanCol.1<-mean(matriz.x[,1]))
(MeanCol.2<-mean(matriz.x[,2]))
(MeanCol.3<-mean(matriz.x[,3]))


#Aplicando a função apply() em uma matriz

(SomaLinha<-apply(X=matriz.x, MARGIN=1, FUN=sum))     #Obtém a soma de cada linha da matriz 



(SomaCol<-apply(X=matriz.x,MARGIN=2,FUN=sum))         #Obtém a soma de cada coluna da matriz

 

(MediaLinha<-apply(X=matriz.x, MARGIN=1, FUN=mean))   #Obtém a média de cada linha da matriz



(MediaCol<-apply(X=matriz.x, MARGIN=2, FUN=mean))       #Obtém a média de cada coluna da matriz

#------------------------------------------------------------------------------------------
#Obtém a soma de cada linha e coluna da matriz, insere uma nova linha e coluna com os resultados
cbind(matriz.x, Total = SomaLinha)
rbind(Total = c(SomaCol, sum(SomaCol)))

rbind(cbind(matriz.x, Total = SomaLinha), Total = c(SomaCol, sum(SomaCol)))  


#Obtém a média de cada linha e coluna da matriz, insere uma nova linha e coluna com os resultados

rbind(cbind(matriz.x, Média = MediaLinha), Média = c(MediaCol, mean(MediaCol))) 


#------------------------------------------
# Criando um data frame
invFlor.1<-data.frame(Especie=c("Acapu", "Angelim Pedra", "Timborana",
                                "Maparajuba", "Ipê Amarelo", "Jatobá"),
                      diametro = c(23.0, 27.0, 33.6, 42.6, 52.1, 63.2), 
                      altura = c(8.4, 8.7, 9.1, 13.2, 15.4, 18.5), 
                      cortar =c("Não", "Não", "Não", "Não", "Sim", "Sim"))
invFlor.1

# Aplicando a função apply() – Data frame

Sum.1<-apply(X=invFlor.1[,2:3], MARGIN=2, FUN=sum)          #Soma de diâmetros e alturas nas colunas

Mean.1<-apply(X=invFlor.1[,2:3], MARGIN=2, FUN=mean)        #Média de diâmetros e alturas nas colunas

Median.1<-apply(X=invFlor.1[,2:3], MARGIN=2, FUN=median)    #Mediana de diâmetros e alturas nas colunas

Max.1<-apply(X=invFlor.1[,2:3], MARGIN=2, FUN=max)          #Máximo de diâmetros e alturas nas colunas

Min.1<-apply(X=invFlor.1[,2:3], MARGIN=2, FUN=min)          #Mínimo de diâmetros e alturas nas colunas

var.1<-apply(X=invFlor.1[,2:3], MARGIN=2, FUN=var)          #Variância de diâmetros e alturas nas colunas

sd.1<-apply(X=invFlor.1[,2:3], MARGIN=2, FUN=sd)            #Desvio Padrão de diâmetros e alturas nas colunas

#Lista com as estatísticas
listaEstatistica<-list(Sum.1, Mean.1, Median.1, Max.1, Min.1, var.1, sd.1)   
listaEstatistica

#Usando uma função específica em FUN
apply(X=invFlor.1[,2:3], MARGIN=2, FUN=function(x) x^2)     #Eleva todos os valores de diâmetro e altura ao quadrado


#--------------------------------------------------------------------------------------------
### A funcão lapply()
#--------------------------------------------------------------------------------------------

#A funcão lapply() é usada quando se deseja aplicar uma função “FUN” para cada objeto de 
#uma lista “X” e, obter o retorno da resposta sempre em forma de lista. A aplicação da 
#funcão requer 2 argumentos básicos: i) uma lista “X” com os elementos sobre os quais será aplicada a funcão FUN; e ii) FUN, indica a funcão que se deseja aplicar a cada elemento da lista “X”.

#No exemplo de uso da funcão lapply () à lista “invFlor.1”, perceba que para o nó [[1]] o 
#retorno foi NA, pois trata-se de um vetor de "character". Situação similar ocorre para 
#vetores do tipo “numeric” com dados NA, que estejam presentes na lista “X”. Nestes casos,
# deve-se usar o argumento “na.rm=TRUE” para omitir o(s) valor(es) de NA e, aplicar a 
# função FUN apenas aos dados numéricos. 

#Perceba, no exemplo de aplicação da funcão lapply () à lista “invFlor.2”, que após o 
#uso do argumento “na.rm=TRUE” as médias dos vetores “DAP”, “Hc” e “Volume” são obtidas 
#com a omissão do NA. Na prática, teve-se a média obtida pela soma dos valores numéricos 
#de cada vetor dividido por 19.
#
#Caso almeje transformar a lista obtida pela função lapply() em um vetor de respostas, 
#você poderá usar a função unlist(). Outra alternativa mais prática é usar a função 
#sapply(), detalhada no próximo subitem.


#Como usar a funcão lapply()?

#SINTAXE: lapply(X, FUN, ...)

#X= uma lista de objetos sobre os quais será aplicada a funcão FUN;

#FUN = funcão (FUN) a ser aplicada a cada elemento da lista; e

#... = argumento opcional da funcão FUN.

#Criando vetores
Especie<-c("Amapa doce","Amapa doce", "Amapa doce","Amapa doce","Amapa doce","Amapa doce","Amapa doce",
           "Piquia", "Piquia","Piquia", "Piquia", "Piquia", "Piquia", "Piquia", "Piquia", "Piquia",
           "Marupa","Marupa","Marupa","Marupa")
DAP<-c(46.473, 102.177,  89.763,  59.524,  47.746, 101.859, 100.586,  56.341,  89.127,  82.761, 126.369,  76.394,
          183.665, 98.676, 54.113, 53.476, 55.386, 56.659, 77.031, 81.169)
Hc<-c(15, 20, 18, 20, 20, 17, 19, 10, 17, 13, 17, 15, 15, 11, 14, 12,  8, 14, 19, 17)
Volume<-c(1.781087, 11.479639,  7.973682,  3.895842,  2.506690,  9.696992, 10.568563,  1.745158,  7.424260,
             4.895288, 14.925130, 4.812846, 27.818330, 5.888494, 2.253793, 1.886635, 1.349201, 2.470906,
             6.198299, 6.157685)

#Criando uma lista com os vetores “Especie”, “DAP”, “Hc” e “Volume”
invFlor.1<-list(Especie, DAP, Hc, Volume)
invFlor.1

#Usando a função lapply () para obter a média de cada elemento da lista
#Para o nó [[1]] o retorno foi NA, pois trata-se de um vetor de "character"

lapply(X=invFlor.1, FUN=mean)


#Aplicação da funcão lapply () – Com presença de NA

#Criando vetores - Com presença de NA
Especie<-c("Amapa doce","Amapa doce", "Amapa doce","Amapa doce","Amapa doce","Amapa doce","Amapa doce",
           "Piquia", "Piquia","Piquia", "Piquia", "Piquia", "Piquia", "Piquia", "Piquia", "Piquia",
           "Marupa","Marupa","Marupa","Marupa")
DAP<-c(NA, 102.177,  89.763,  59.524,  47.746, 101.859, 100.586,  56.341,  89.127,  82.761, 126.369,  76.394,
          183.665, 98.676, 54.113, 53.476, 55.386, 56.659, 77.031, 81.169)
Hc<-c(NA, 18, 20, 20, 17, 19, 10, 17, 13, 17, 15, 15, 11, 14, 12,  8, 14, 19, 17)
Volume<-c(NA, 11.479639,  7.973682,  3.895842,  2.506690,  9.696992, 10.568563,  1.745158,  7.424260,
             4.895288, 14.925130, 4.812846, 27.818330, 5.888494, 2.253793, 1.886635, 1.349201, 2.470906,
             6.198299, 6.157685)

#Criando uma lista com os vetores “Especie”, “DAP”, “Hc” e “Volume”
invFlor.2<-list(Especie, DAP, Hc, Volume)
invFlor.2

#Usando a função lapply () para obter uma lista de médias
lapply(X=invFlor.2, FUN=mean)

#Usando o argumento “na.rm=TRUE”
#argumento “na.rm=TRUE” para omissão de NA
lapply(X=invFlor.2, FUN=mean, na.rm=TRUE)          

#Aplicação da funcão unlist()
unlist(lapply(X=invFlor.2, FUN=mean, na.rm=TRUE))                                           #unindo as respostas em um vetor

#--------------------------------------------------------------------------------------------
### A funcão tapply()
#--------------------------------------------------------------------------------------------
#A função tapply() é usada com o objetivo de aplicar funções a subgrupos (níveis de fator) 
#específicos dentro de um vetor de variável categórica. Assim, a principal diferenciação da 
#função tapply() é exigir a existência de uma variável categórica para obtenção de subgrupos.
#De modo geral, a função requer 3 argumentos:

#1) o vetor, matriz ou data frame “X” sobre o qual deseja aplicar a função; 

#2) o argumento INDEX, isto é, o vetor de variável categórica sob a qual serão definidos os subgrupos; e 

#3) a funcão (FUN) a ser aplicada sob cada subgrupo. 

#Opcionalmente, tem-se o argumento lógico simplify = (TRUE or FALSE). A escolha de TRUE (default) 
#retornar um array. Caso contrário, isto é, a opção por FALSE retornará uma lista.

#O uso da argumentação “na.rm=TRUE” é bastante importante na função tapply(),  pois permite que 
#funções sejam aplicadas mesmo com a existência de NA (Not Available) nos vetores numéricos.

#Quando o interesse for aplicar uma função a duas ou mais variáveis categóricas, pode-se concatenar 
#os vetores de variáveis categóricas no argumento INDEX. Veja no exemplo que ao concatenar os vetores 
#“Especie” e “Cortar”, obtém-se o retorno das somas dos volumes por espécie e, por categoria de corte. 


#----------------------------------------
# Como usar a funcão tapply()?

#SINTAXE: tapply(X, INDEX, FUN = NULL, ..., simplify = TRUE)

#X = o vetor, matriz ou data frame “X” sobre o qual deseja aplicar a função FUN;

#INDEX = vetor de variável categórica sob a qual serão definidos os subgrupos;

#FUN = funcão (FUN) a ser aplicada sob cada subgrupo;

#... = Argumentos opcionais para a funcão FUN.

#Simplify = argumento lógico (TRUE or FALSE). Se TRUE (default) retorna um array. Se FALSE retorna uma lista.


#Criando um data frame
invFlor.1<-data.frame(Especie=c("Acapu", "Jatobá", "Timborana", "Jatobá", "Acapu", 
                                "Timborana", "Acapu", "Jatobá", "Timborana", "Jatobá"),
                      Diametro_cm = c(43.0, 57.0, 63.6, 42.6, 52.1, 63.2, 87.3, 58.3, 77.5, 63.2), 
                      Altura_m = c(8.4, 8.7, 9.1, 13.2, 15.4, 18.5, 14.5, 18.5, 14.7, 16.8), 
                      Cortar =c("Não", "Sim", "Sim", "Não", "Não", "Sim","Não", "Não", "Sim", "Sim"),
                      Volume_m3 =c(0.853894308,1.554021007,2.023687947,1.316985674,2.298180254,4.062504044,
                                   6.075533376,3.456979143,4.854099353,3.689192862),
                      stringsAsFactors=TRUE)
invFlor.1 


# Aplicando a função tapply() – Resposta para subgrupos de uma variável categórica

# Retorna uma lista com a média de diâmetro por espécie
MediaEspecie<-tapply(X=invFlor.1$Diametro_cm,INDEX=invFlor.1$Especie,mean, simplify = TRUE)
MediaEspecie

# Retorna uma lista com o volume total por espécie
SomaEspecie<-tapply(X=invFlor.1$Volume_m3,INDEX=invFlor.1$Especie,sum, simplify = FALSE)
SomaEspecie

tapply(X=invFlor.1$Volume_m3, INDEX=invFlor.1[, c("Especie", "Cortar")], FUN=sum)


#Criando um data frame – Possuindo Not Available (NA)
invFlor.1<-data.frame(Especie=c("Acapu", "Jatobá", "Timborana", "Jatobá", "Acapu", 
                                "Timborana", "Acapu", "Jatobá", "Timborana", "Jatobá"),
                      Diametro_cm = c(43.0, 57.0, 63.6, 42.6, 52.1, 63.2, 87.3, 58.3, 77.5, 63.2), 
                      Altura_m = c(NA, 8.7, 9.1, 13.2, 15.4, 18.5, 14.5, 18.5, 14.7, 16.8), 
                      Cortar =c("Não", "Sim", "Sim", "Não", "Não", "Sim","Não", "Não", "Sim", "Sim"),
                      Volume_m3 =c(0.853894308,1.554021007,2.023687947,1.316985674,2.298180254,4.062504044,
                                   6.075533376,3.456979143,4.854099353,3.689192862),
                      stringsAsFactors=TRUE)
invFlor.1 


#Aplicando a função tapply() – Usando a argumentação “na.rm = TRUE”

MediaEspecie<-tapply(X=invFlor.1$Altura_m,INDEX=invFlor.1$Especie,mean, simplify = TRUE)
MediaEspecie                                                                            #Retorna a média de altura para cada espécie

#Retorna a média de altura para cada espécie, com argumentação “na.rm = TRUE” (removendo NA)
MediaEspecie.2<-tapply(X=invFlor.1$Altura_m,INDEX=invFlor.1$Especie,mean, 
                       simplify = TRUE, na.rm = TRUE)
MediaEspecie.2

#Além disso, observe que células são preenchidas com NA em situações de inexistência de 
#cruzamento de subgrupos, por exemplo, para a espécie “Acapu” não existia árvores 
#selecionadas para corte, por isso o retorno de NA para o subgrupo “Sim”.


#-----------------------------------------------------------------------------------------
### - A função aggregate()
#-----------------------------------------------------------------------------------------

#A função aggregate() pode ser usada de forma similar a tabela dinâmica do Microsoft 
#Excel. Em geral, o método para data frames possui cinco argumentos, sendo dois do tipo 
#lógico. Em aggregate, “x” trata de um vetor ou uma lista de vetores numérico de um 
#data frame; ii) “by”, é um vetor ou uma lista de vetores de variáveis categóricas sob 
#a(s) qual(is) será(ão) definido(s) os subgrupos; iii) “FUN”, funcão a ser aplicada sob 
#cada subgrupo de variável(is) categórica(s). Os argumentos lógicos são “simplify” e 
#“drop”, cujo default é TRUE. 


# Como usar a funcão aggregate ()?

#SINTAXE: aggregate(x, by, FUN, ..., simplify = TRUE, drop = TRUE)

#x = vetor ou uma lista de vetores numérico de um data frame;
#
#by = um vetor ou uma lista de vetores de variáveis categóricas sob a(s) 
#qual(is) será(ão) definido(s) os subgrupos;

#FUN = funcão (FUN) a ser aplicada sob cada subgrupo;

#... = argumentos opcionais para a funcão FUN.

#simplify = argumento lógico (TRUE or FALSE), indicando a forma de saída da resposta;

#drop = argumento lógico (TRUE or FALSE), indicando se cruzamentos nulos devem ser 
#retornados na resposta.


#----------------------------------------------------------------------
# Lendo dados de inventário 100% nomeado “IF100_UT5_CVolume.csv”
library(data.table)
IF <- fread("IF100.csv")
str(IF)

#Convertendo UPA, UT, Faixa e Qf para “factor”, e CAP e Hc em “numeric”
IF$UPA <- as.factor(IF$UPA)
IF$UT <- as.factor(IF$UT)
IF$Faixa <- as.factor(IF$Faixa)
IF$Hc <- as.numeric(IF$Hc)
IF$Qf <- as.factor(IF$Qf)

str(IF)                                                                                                      #nova estrutura dos dados de IF100%

#Selecionando apenas as árvores de Amapá doce, Pequiá e Marupá...
Amapa.doce<-subset(IF,Especie == "Amapa doce", select = c("Especie","DAP","Hc","Volume","Qf", "MICRO"))
Piquia<-subset(IF,Especie == "Piquia", select = c("Especie","DAP","Hc","Volume","Qf", "MICRO"))
Marupa<-subset(IF,Especie == "Marupa", select = c("Especie","DAP","Hc","Volume","Qf", "MICRO"))

#Unindo data frames com a funcão rbind()
selecao <- rbind(Amapa.doce,Piquia,Marupa)
str(selecao)

#Número de árvores por espécie e total
aggregate(x=selecao$Especie, 
          by=list(selecao$Especie), FUN=length)

#Média por espécie para as variáveis DAP, Hc, Volume

aggregate(x=selecao[, c("DAP", "Hc", "Volume")], 
                   by=list(selecao$Especie), FUN=mean)

#Média por espécie e microzoneamento, para as variáveis DAP, Hc, Volume
aggregate(x=selecao[, c("DAP", "Hc", "Volume")],
                   by=selecao[, c("Especie", "MICRO")], FUN=mean,
                   simplify=TRUE, drop=TRUE)

#Criando uma função para calcular média e inserindo-a em FUN
aggregate(x=selecao[, c("DAP", "Hc", "Volume")],
                   by=selecao[, c("Especie", "MICRO")], 
                   FUN=function(x) mean = mean(x),
                   simplify=TRUE,drop=TRUE)

#Testar calcular a variância usando a funcão var() e outra criada
aggregate(x=selecao[, c("DAP", "Hc", "Volume")],
                 by=selecao[, c("Especie", "MICRO")], 
                 FUN=function(x) var=var(x),
                 simplify=TRUE,drop=FALSE)

aggregate(x=selecao[, c("DAP", "Hc", "Volume")],
                 by=selecao[, c("Especie", "MICRO")], 
                 FUN=function(x) var=sum((x-mean(x))^2)/(length(x)-1),
                 simplify=TRUE,drop=FALSE)
