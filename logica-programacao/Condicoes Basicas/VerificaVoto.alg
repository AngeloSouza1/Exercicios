// Neste programa, o usuário é solicitado a inserir o ano de nascimento, que é lido na variável
// anoNascimento. Em seguida, o programa calcula a idade subtraindo o ano de nascimento do ano atual 
// (assumindo que o ano atual é 2023) e armazena o resultado na variável idade. Finalmente, ele verifica 
// se a idade é maior ou igual a 16 (idade mínima para votar no Brasil) e exibe uma mensagem informando
// se a pessoa pode ou não votar com base na idade calculada.



Algoritmo VerificaVoto
Var
   anoNascimento, idade: Inteiro

Inicio
   Escreva("Digite o ano de nascimento: ")
   Leia(anoNascimento)

   // Calcula a idade subtraindo o ano de nascimento do ano atual (assumindo que o ano atual é 2023)
   idade <- 2023 - anoNascimento

   // Verifica se a idade é maior ou igual a 16 (idade mínima para votar no Brasil)
   Se idade >= 16 Entao
      Escreva("Você tem ", idade, " anos e pode votar.")
   Senao
      Escreva("Você tem ", idade, " anos e não pode votar.")
   FimSe
FimAlgoritmo

