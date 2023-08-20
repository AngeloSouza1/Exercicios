// Neste programa, o procedimento Fibonacci() recebe o valor n como parâmetro e gera
// os n primeiros termos da sequência de Fibonacci. O programa principal solicita ao 
// usuário que digite o número de termos desejados e, em seguida, chama o procedimento 
// Fibonacci() com o valor fornecido. A sequência de Fibonacci será mostrada na tela de 
// acordo com o número de termos especificados.

Procedimento Fibonacci(n: Inteiro)
Var
   termo1, termo2, proximo: Inteiro
   i: Inteiro

Inicio
   termo1 <- 0
   termo2 <- 1

   Escreva(termo1, " >> ")
   Escreva(termo2, " >> ")

   Para i de 3 ate n Faca
      proximo <- termo1 + termo2
      Escreva(proximo, " >> ")
      termo1 <- termo2
      termo2 <- proximo
   FimPara

   Escreva("FIM")
FimProcedimento

Algoritmo ProgramaPrincipal
Var
   numeroTermos: Inteiro

Inicio
   Escreva("Digite o número de termos da sequência de Fibonacci: ")
   Leia(numeroTermos)

   Fibonacci(numeroTermos)
FimAlgoritmo
