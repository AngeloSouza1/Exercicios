// Neste programa, primeiro preenchemos o vetor com números aleatórios entre 0 e 99. 
// Em seguida, mostramos os números gerados. Depois, usamos o algoritmo de ordenação 
// bolha para ordenar o vetor em ordem crescente e, finalmente, mostramos os valores 
// ordenados na tela.

Algoritmo OrdenarVetor
Var
   vetor: Vetor[1..20] de Inteiro
   i, j, temp: Inteiro

Inicio
   // Preenche o vetor com números aleatórios entre 0 e 99
   Para i de 1 ate 20 Faca
      vetor[i] <- Aleatorio(0, 99)
   FimPara

   Escreva("Números gerados:")
   Para i de 1 ate 20 Faca
      Escreva(vetor[i])
      Se i < 20 Entao
         Escreva(", ")
      Senao
         Escreva(".")
      FimSe
   FimPara

   // Ordena o vetor em ordem crescente usando o algoritmo de ordenação bolha
   Para i de 1 ate 19 Faca
      Para j de 1 ate 20 - i Faca
         Se vetor[j] > vetor[j + 1] Entao
            // Troca os elementos
            temp <- vetor[j]
            vetor[j] <- vetor[j + 1]
            vetor[j + 1] <- temp
         FimSe
      FimPara
   FimPara

   Escreva("\nNúmeros ordenados em ordem crescente:")
   Para i de 1 ate 20 Faca
      Escreva(vetor[i])
      Se i < 20 Entao
         Escreva(", ")
      Senao
         Escreva(".")
      FimSe
   FimPara
FimAlgoritmo
