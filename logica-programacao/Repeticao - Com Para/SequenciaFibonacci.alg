// Neste programa, usamos dois termos iniciais, 1 e 1, e calculamos os próximos termos 
// da sequência de Fibonacci usando um loop "para". O programa exibe os 10 primeiros elementos 
// da sequência na tela.

Algoritmo SequenciaFibonacci
Var
   primeiroTermo, segundoTermo, proximoTermo: Inteiro
   contador: Inteiro

Inicio
   primeiroTermo <- 1
   segundoTermo <- 1

   Escreva("Os 10 primeiros elementos da Sequência de Fibonacci são:")

   Para contador de 1 ate 10 Faca
      Escreva(primeiroTermo)

      proximoTermo <- primeiroTermo + segundoTermo
      primeiroTermo <- segundoTermo
      segundoTermo <- proximoTermo

      Se contador < 10 Entao
         Escreva(", ")
      Senao
         Escreva(".")
      FimSe
   FimPara
FimAlgoritmo
