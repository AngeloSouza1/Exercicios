// Neste programa, primeiro preenchemos o vetor com números aleatórios entre 1 e 15.
// Em seguida, pedimos ao usuário para digitar a chave. O programa pesquisa o vetor 
// para encontrar a chave, registra as posições onde a chave foi encontrada e conta 
// quantas vezes a chave foi sorteada. Finalmente, mostramos os resultados na tela.

Algoritmo PesquisaVetor
Var
   vetor: Vetor[1..30] de Inteiro
   chave, posicoesEncontradas, contador, contadorChave: Inteiro

Inicio
   // Preenche o vetor com números aleatórios entre 1 e 15
   Para contador de 1 ate 30 Faca
      vetor[contador] <- Aleatorio(1, 15)
   FimPara

   Escreva("Vetor gerado:")
   Para contador de 1 ate 30 Faca
      Escreva(vetor[contador])
      Se contador < 30 Entao
         Escreva(", ")
      Senao
         Escreva(".")
      FimSe
   FimPara

   Escreva("\nDigite um número (chave): ")
   Leia(chave)

   posicoesEncontradas <- ""
   contadorChave <- 0

   // Procura a chave no vetor
   Para contador de 1 ate 30 Faca
      Se vetor[contador] = chave Entao
         posicoesEncontradas <- posicoesEncontradas + " " + contador
         contadorChave <- contadorChave + 1
      FimSe
   FimPara

   Se contadorChave > 0 Entao
      Escreva("A chave ", chave, " foi encontrada nas posições:", posicoesEncontradas)
      Escreva("A chave ", chave, " foi sorteada ", contadorChave, " vezes.")
   Senao
      Escreva("A chave ", chave, " não foi encontrada no vetor.")
   FimSe
FimAlgoritmo

