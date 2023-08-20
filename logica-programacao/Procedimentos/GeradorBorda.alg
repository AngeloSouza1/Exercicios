// Este procedimento Gerador() recebe o texto, o número da borda e o número de 
// repetições como parâmetros. Dependendo do número da borda escolhida, ele imprime 
// a borda apropriada e o texto entre as bordas, repetindo-o o número de vezes especificado.


Procedimento Gerador(texto: Caractere, borda: Inteiro, repeticoes: Inteiro)
Var
   i: Inteiro

Inicio
   Se borda = 1 Entao
      // Borda 1: +-------=======------+
      Para i de 1 ate repeticoes Faca
         Escreva("+-------=======------+")
         Escreva(texto)
         Escreva("+-------=======------+")
      FimPara
   Senao Se borda = 2 Entao
      // Borda 2: ~~~~~~~~:::::::~~~~~~~
      Para i de 1 ate repeticoes Faca
         Escreva("~~~~~~~~:::::::~~~~~~~")
         Escreva(texto)
         Escreva("~~~~~~~~:::::::~~~~~~~")
      FimPara
   Senao Se borda = 3 Entao
      // Borda 3: <<<<<<<<------->>>>>>>
      Para i de 1 ate repeticoes Faca
         Escreva("<<<<<<<<<------->>>>>>>")
         Escreva(texto)
         Escreva("<<<<<<<<<------->>>>>>>")
      FimPara
   FimSe
FimProcedimento
