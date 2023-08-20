// Neste programa, a função SuperSomador() recebe os valores inicio e fim como parâmetros e 
// retorna a soma de todos os números no intervalo entre esses valores. O programa principal 
// solicita ao usuário que digite os números de início e fim do intervalo e, em seguida, chama
// a função SuperSomador() para calcular a soma. O resultado é exibido na tela.

Função SuperSomador(inicio, fim: Inteiro): Inteiro
Var
   soma: Inteiro
   i: Inteiro

Inicio
   soma <- 0

   Para i de inicio ate fim Faca
      soma <- soma + i
   FimPara

   Retorne soma
FimFunção

Algoritmo ProgramaPrincipal
Var
   numeroInicio, numeroFim, resultado: Inteiro

Inicio
   Escreva("Digite o número de início do intervalo: ")
   Leia(numeroInicio)

   Escreva("Digite o número de fim do intervalo: ")
   Leia(numeroFim)

   resultado <- SuperSomador(numeroInicio, numeroFim)

   Escreva("A soma dos números no intervalo é: ", resultado)
FimAlgoritmo
