// Neste programa, o usuário é solicitado a inserir as duas notas como números reais. 
// As notas são lidas nas variáveis nota1 e nota2. 
// A média é calculada pela fórmula (nota1 + nota2) / 2 e é armazenada na variável media.
// Por fim, o programa exibe a mensagem formatada com a média calculada.

Algoritmo CalculaMedia
Var
   nota1, nota2, media: Real

Inicio
   Escreva("Nota 1: ")
   Leia(nota1)
   Escreva("Nota 2: ")
   Leia(nota2)
   
   media <- (nota1 + nota2) / 2
   
   Escreva("A média entre ", nota1, " e ", nota2, " é igual a ", media)
FimAlgoritmo
