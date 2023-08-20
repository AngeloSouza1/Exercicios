// Neste programa, lemos o nome, o sexo e o salário de 5 funcionários e armazenamos 
// esses dados em três vetores. Em seguida, percorremos o vetor de sexos e o vetor de 
// salários para encontrar as funcionárias mulheres que ganham mais de R$5 mil e exibimos 
// suas informações na lista final.

Algoritmo ListagemFuncionarios
Var
   nomes: Vetor[1..5] de Caractere
   sexos: Vetor[1..5] de Caractere
   salarios: Vetor[1..5] de Real
   i: Inteiro

Inicio
   Para i de 1 ate 5 Faca
      Escreva("Digite o nome do funcionário ", i, ": ")
      Leia(nomes[i])

      Escreva("Digite o sexo do funcionário ", i, " (M/F): ")
      Leia(sexos[i])

      Escreva("Digite o salário do funcionário ", i, ": ")
      Leia(salarios[i])

   FimPara

   Escreva("\nLista de funcionárias mulheres que ganham mais de R$5 mil:")

   Para i de 1 ate 5 Faca
      Se sexos[i] = "F" E salarios[i] > 5000.0 Entao
         Escreva("\nNome: ", nomes[i])
         Escreva("Salário: R$", salarios[i])
      FimSe
   FimPara
FimAlgoritmo
