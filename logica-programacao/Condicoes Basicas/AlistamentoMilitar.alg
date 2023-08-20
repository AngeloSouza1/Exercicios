// Neste programa, o usuário é solicitado a inserir o ano de nascimento do rapaz, que é lido na variável
// anoNascimento. O programa calcula a idade do rapaz subtraindo o ano de nascimento do ano atual 
// (assumindo que o ano atual é 2023) e armazena o resultado na variável idade. Em seguida, ele verifica 
// a situação do rapaz em relação ao alistamento militar:
// Se a idade for menor que 18, o programa calcula e exibe quantos anos faltam para o alistamento.
// Se a idade for maior que 18, o programa calcula e exibe quantos anos já se passaram desde o alistamento.
// Se a idade for exatamente 18, o programa informa que o rapaz está no ano do alistamento militar.

Algoritmo AlistamentoMilitar
Var
   anoNascimento, idade, anoAtual: Inteiro

Inicio
   Escreva("Digite o ano de nascimento do rapaz: ")
   Leia(anoNascimento)

   // Obtém o ano atual (assumindo que o ano atual é 2023)
   anoAtual <- 2023

   // Calcula a idade do rapaz
   idade <- anoAtual - anoNascimento

   Se idade < 18 Entao
      Escreva("Faltam ", 18 - idade, " anos para o alistamento militar.")
   Senao Se idade > 18 Entao
      Escreva("Já se passaram ", idade - 18, " anos desde o alistamento militar.")
   Senao
      Escreva("Você está no ano do alistamento militar.")
   FimSe
FimAlgoritmo

