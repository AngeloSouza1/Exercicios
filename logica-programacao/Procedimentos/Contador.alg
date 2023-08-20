// Neste programa, o procedimento Contador() recebe os valores de início, fim 
// e incremento como parâmetros e realiza a contagem. O programa principal solicita 
// ao usuário que digite esses valores e, em seguida, chama o procedimento Contador()
// com os valores fornecidos. A contagem será mostrada na tela de acordo com os parâmetros
// especificados.

Procedimento Contador(inicio, fim, incremento: Inteiro)
Var
   i: Inteiro

Inicio
   i <- inicio
   Enquanto i <= fim Faca
      Escreva(i)
      i <- i + incremento
   FimEnquanto
FimProcedimento

Algoritmo ProgramaPrincipal
Var
   inicio, fim, incremento: Inteiro

Inicio
   Escreva("Digite o valor de início: ")
   Leia(inicio)

   Escreva("Digite o valor de fim: ")
   Leia(fim)

   Escreva("Digite o valor do incremento: ")
   Leia(incremento)

   Contador(inicio, fim, incremento)
FimAlgoritmo
