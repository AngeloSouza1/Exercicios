// Neste programa, usamos um loop "Enquanto" para ler o nome, a idade e o sexo de 
// várias pessoas até que o usuário escolha não continuar. Durante a leitura, calculamos 
// a soma das idades, a média das idades, identificamos a pessoa mais velha, a mulher mais
// jovem, contamos os homens com mais de 30 anos e as mulheres com menos de 18 anos. No 
// final, exibimos todas as estatísticas solicitadas.

Algoritmo EstatisticasPessoas
Var
   nome, sexo, pessoaMaisVelha, mulherMaisJovem: caractere
   idade, somaIdades, mediaIdades: Inteiro
   contadorPessoas, homensMaisDe30, mulheresMenosDe18: Inteiro

Inicio
   somaIdades <- 0
   contadorPessoas <- 0
   homensMaisDe30 <- 0
   mulheresMenosDe18 <- 0

   Escreva("Digite o nome da pessoa: ")
   Leia(nome)
   
   Enquanto True Faca
      Escreva("Digite a idade da pessoa: ")
      Leia(idade)
      
      Escreva("Digite o sexo da pessoa (M para masculino, F para feminino): ")
      Leia(sexo)
      
      somaIdades <- somaIdades + idade
      contadorPessoas <- contadorPessoas + 1
      
      Se contadorPessoas = 1 Ou idade > pessoaMaisVelha Entao
         pessoaMaisVelha <- nome
      FimSe
      
      Se (sexo = "F" Ou sexo = "f") E (contadorPessoas = 1 Ou idade < mulherMaisJovem) Entao
         mulherMaisJovem <- nome
      FimSe
      
      Se (sexo = "M" Ou sexo = "m") E idade > 30 Entao
         homensMaisDe30 <- homensMaisDe30 + 1
      FimSe
      
      Se (sexo = "F" Ou sexo = "f") E idade < 18 Entao
         mulheresMenosDe18 <- mulheresMenosDe18 + 1
      FimSe
      
      Escreva("Deseja continuar? (S para sim, qualquer outra tecla para não): ")
      Leia(sexo)
      
      Se sexo <> "S" E sexo <> "s" Entao
         Pare
      FimSe

   FimEnquanto

   mediaIdades <- somaIdades / contadorPessoas

   Escreva("a) O nome da pessoa mais velha é: ", pessoaMaisVelha)
   Escreva("b) O nome da mulher mais jovem é: ", mulherMaisJovem)
   Escreva("c) A média de idade do grupo é: ", mediaIdades)
   Escreva("d) Quantidade de homens com mais de 30 anos: ", homensMaisDe30)
   Escreva("e) Quantidade de mulheres com menos de 18 anos: ", mulheresMenosDe18)
FimAlgoritmo
