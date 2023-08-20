// Neste programa, usamos um loop "Para" para contar de 30 até 1, com passos de -1. 
// Dentro do loop, verificamos se o número é divisível por 4 (ou seja, resto da divisão
// por 4 é igual a 0) e, se for o caso, marcamos o número com colchetes. Caso contrário,
// apenas exibimos o número. Isso produzirá a contagem regressiva desejada com os números
// divisíveis por 4 marcados.

Algoritmo ContagemRegressiva
Var
   numero: Inteiro

Inicio
   Para numero de 30 Ate 1 Passo -1
      Se numero % 4 = 0 Entao
         Escreva("[", numero, "] ")
      Senao
         Escreva(numero, " ")
      FimSe
   FimPara
FimAlgoritmo
