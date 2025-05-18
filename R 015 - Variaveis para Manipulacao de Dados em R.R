################################################################################################
#Arquivo.....: R 015 - Variaveis para Manipulacao de Dados em R.R
#Data........: 17/05/2025
#Autor.......: Datalib Tecnologia e Treinamento em Dados (Saito)
#Copyright...: Utilização somente para fins educacionais e didaticos com autorização do autor.
#Referencias.: Script faz parte do curso Introdutório à Linguagem R
#Comentario..: Utilização do RStudio para executar o script
################################################################################################
  
#declaracao de vetores
vetor_numerico <- c(1, 5, 25, -30, -200.90)
vetor_caracteres <- c("Python", "R", "Java", "C#")
vetor_logico <- c(TRUE, FALSE, TRUE, FALSE)
                       
#acesso a um elemento do vetor
vetor_numerico[1]		
vetor_caracteres[2]

#Outras operações com vetor

#criacao de um vetor com valores preenchidos
vetor_seq <- 1:10
print(vetor_seq)

#multiplicacao de um vetor
vetor_result <- vetor_seq * 2
print(vetor_result)

#criacao de um vetor com valores negativos decrescente
vetor_neg <- -10:-1
print(vetor_neg)

#soma de vetores
vetor_soma <- vetor_seq + vetor_neg
print(vetor_seq)
print(vetor_neg)
print(vetor_soma)


#subtracao de vetores
vetor_dif <- vetor_result - vetor_soma
print(vetor_result) 
print(vetor_soma)
print(vetor_dif)


# Cria uma lista com um número, uma string e um vetor
minha_lista <- list(1, "Olá, mundo!", c(2, 3, 4))

# Acessa o primeiro elemento
minha_lista[[1]]  	# Retorna 1

# Acessa o segundo elemento
minha_lista[[2]]  	# Retorna "Olá, mundo!"

# Acessa o terceiro elemento (o vetor)
minha_lista[[3]]  	# Retorna c(2, 3, 4)

# Acessa o terceiro elemento da lista, com o terceiro elemento do vetor
minha_lista[[3]][[3]]   	# Retorna 4

# Cria uma lista com elementos nomeados
minha_lista_nomeada <- list(nome = "João", idade = 30, cidade = "Lisboa")

# Acessa o elemento "nome"
minha_lista_nomeada$nome  # Output: "João"

# Acessa o elemento "idade"
minha_lista_nomeada$idade  # Output: 30

# Acessa o elemento "cidade"
minha_lista_nomeada$cidade  # Output: "Lisboa"



############
# MATRIZES #
############

# Cria uma matriz 3x3 com números de 1 a 9, preenchendo por coluna
matriz1 <- matrix(1:9, nrow = 3, ncol = 3)
print(matriz1)

# Cria uma matriz 3x3 com números de 1 a 9, preenchendo por linha
matriz2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
print(matriz2)



#########################################
# CRIACAO DE MATRIZES COM RBIND E CBIND #
#########################################

# Cria vetores
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)

# Une os vetores por linhas (rbind())
matriz3 <- rbind(v1, v2)
print(matriz3)

# Une os vetores por colunas (cbind())
matriz4 <- cbind(v1, v2)
print(matriz4)


##########################
# OPERAÇÕES COM MATRIZES #
##########################

# Transposta de uma matriz
transposta <- t(matriz1)
print(transposta)

# Soma de duas matrizes
matriz_soma <- matriz1 + matriz2
print(matriz_soma)

# Multiplicação de uma matriz por uma escalar
matriz_multiplicada <- matriz1 * 2
print(matriz_multiplicada)

# Extração de uma linha ou coluna
linha1 <- matriz1[1, ]
coluna2 <- matriz1[, 2]
print(linha1)
print(coluna2)


##############################
#OUTRAS FUNCOES COM MATRIZES #
##############################

#Retorna as dimensões (número de linhas e colunas) da matriz.
dim(matriz1)

#Calcula a média de cada linha da matriz.
rowMeans(matriz1)

#Calcula a média de cada coluna da matriz.
colMeans(matriz1)

#Calcula a soma de cada linha da matriz.
rowSums(matriz1)

#Calcula a soma de cada coluna da matriz.
colSums(matriz1)

#limpando todas as variaveis
rm(list=(ls()))


##############
#DATA FRAMES #
##############

# Usando a função data.frame() com vetores
nome <- c("João", "Maria", "Carlos")
idade <- c(25, 30, 28)
cidade <- c("Lisboa", "Porto", "Coimbra")
df <- data.frame(nome, idade, cidade)
print(df)


# Usando a função tibble() (do pacote tidyverse)
# Mais moderna e com funcionalidades extras
install.packages("tidyverse")
library(tidyverse)

df <- tibble(nome = c("João", "Maria", "Carlos"),
             idade = c(25, 30, 28),
             cidade = c("Lisboa", "Porto", "Coimbra"))
print(df)


# Usando novamente função data.frame() com vetores
df <- data.frame(nome, idade, cidade)
print(df)

#Acessando colunas e linhas: 
#Colunas: 
df$nome
df[["idade"]]
df[, "cidade"]

#Linhas: 
df[1,]
df[c(2,3), ] 

#Ambos: 
df[1:2, c("nome", "cidade")]


#Operações comuns: 

#Ordenação: 
df[order(df$idade),]
df %>% arrange(idade)
df %>% arrange(desc(idade))


#Filtro Simnples
df[df$idade > 27, ]
df %>% filter(idade > 27)

#Filtro Composto
df[df$idade > 27 & df$idade < 29, ]


#Juntando dataframes: 

# Usando a função data.frame() com vetores
nome <- c("João", "Maria", "Carlos")
idade <- c(25, 30, 28)
cidade <- c("Lisboa", "Porto", "Coimbra")
df1 <- data.frame(nome, idade, cidade)
print(df1)

salario <- c(4300,6800,8900)
cargo <- c("Programador","Analista TI","Cientista Dados")
dt_contratacao <- as.Date(c("2023-10-26", "2023-11-15", "2023-12-31"))
df2 <- data.frame(nome, salario, cargo, dt_contratacao)
print(df2)

merge(df1, df2, by = "nome")

#Adicionando colunas: 
print(df)
df$sobrenome <- c("Silva","Cruz","Souza")
print(df)

#excluindo colunas
print(df)
df$cidade <- NULL
print(df)


#excluindo todas as variáveis
rm(list=ls())
ls()


#
#  Ficou com alguma dúvida?
#   Comentem! Responderemos o quanto antes a sua dúvida!
#
#  Gostou desse vídeo?
#   Compartilhe, curta e assine o nosso canal!
#  
#  Siga as nossas redes sociais em:
#   Youtube:    youtube.com/@datalib22
#   X:          x.com/datalib_tec 
#   Instagram:  instagram.com/datalib_tec 
#   Blog:       www.datalib.com.br
#   Github:     https://github.com/datalibtec
#
#   obrigado e até + 
#
#   Datalib
#