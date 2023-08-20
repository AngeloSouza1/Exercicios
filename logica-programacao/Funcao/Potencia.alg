// Neste programa, a função Potencia() recebe os valores base e expoente como parâmetros 
// e calcula o resultado da exponenciação. O programa principal solicita ao usuário que 
// digite a base e o expoente e, em seguida, chama a função Potencia() para calcular o resultado. 
// O resultado é exibido na tela. A função lida com casos em que o expoente é igual a 0 e quando 
// o expoente é negativo.

Função Potencia(base, expoente: Real): Real
Var
   resultado: Real
   i: Inteiro

Inicio
   resultado <- 1

   Se expoente = 0 Então
      Retorne 1
   FimSe

   Se expoente > 0 Então
      Para i de 1 ate expoente Faca
         resultado <- resultado * base
      FimPara
   Senão
      Para i de 1 ate Abs(expoente) Faca
         resultado <- resultado / base
      FimPara
   FimSe

   Retorne resultado
FimFunção

Algoritmo ProgramaPrincipal
Var
   base, expoente, resultado: Real

Inicio
   Escreva("Digite a base: ")
   Leia(base)

   Escreva("Digite o expoente: ")
   Leia(expoente)

   resultado <- Potencia(base, expoente)

   Escreva("O resultado da exponenciação é: ", resultado)
FimAlgoritmo
