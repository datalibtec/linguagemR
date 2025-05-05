################################################################################################
#Arquivo.....: R 010 - Introducao ao R e Variaveis Nativas.R
#Data........: 28/04/2025
#Autor.......: Datalib Tecnologia e Treinamento em Dados (Saito)
#Copyright...: Utilização somente para fins educacionais e didaticos com autorização do autor.
#Referencias.: Script faz parte do curso Introdutório à Linguagem R
#Comentario..: Utilização do RStudio para executar o script
################################################################################################
  

###########################
# NOMES DE VARIAVEIS EM R #
###########################

nomeSobrenome <- "Rodrigo Saito"  #VÁLIDO
_cidade <- "São Paulo"            #INVÁLIDO
.uf <- 'SP'                       #VÁLIDO
1string <- 'valor1'               #INVÁLIDO
string1 <- 'valor 1'              #VÁLIDO
endereco completo <- 'Rua Virgilio, 121'  #INVALIDO
endereco_completo <- 'Rua Virgilio, 121'  #VALIDO
TRUE <- TRUE                              #INVALIDO

#Listando variáveis
ls()

#excluindo 1 variaveis
rm(nomeSobrenome)

#excluindo lista de variaveis definidas
rm(list=c(".uf","string1","endereco_completo"))
ls()

#excluindo todas as variáveis
rm(list=ls())
ls()

#definindo tipos numericos
a <- 10
b <- -10
c <- 205.87

#definindo tipos caracteres ou strings
linguagem1 <- "R"
linguagem2 <- 'Python'
linguagem3 <- "C Sharp"

#definindo tipos logicos
flag <- TRUE
resposta <- FALSE

#definindo tipo fator
sexo <- c("M", "F", "M", "F", "M")
sexo <- factor(sexo)

#definindo tipo inteiro
inteiro1 <- 1L
inteiro2 <- 0L
inteiro3 <- -2015L

#definindo tipo raw
my_raw <- raw(10)
print(my_raw)

#verificando os tipos das variáveis
ls()
class(a)
class(c)
class(flag)
class(inteiro1)
class(linguagem1)
class(my_raw)

#excluindo dodas as variaveis
rm(list=ls())



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

