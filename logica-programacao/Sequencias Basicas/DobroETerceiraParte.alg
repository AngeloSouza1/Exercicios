// Neste programa, o usuário é solicitado a inserir um número real. 
// O número é lido na variável numero. Em seguida, o programa calcula
// o dobro multiplicando o número por 2 e a terça parte dividindo o 
// número por 3. Por fim, ele exibe as mensagens formatadas com o dobro e a terça parte calculados.


Algoritmo DobroETerceiraParte
Var
   numero, dobro, terceiraParte: Real

Inicio
   Escreva("Digite um número: ")
   Leia(numero)
   
   dobro <- numero * 2
   terceiraParte <- numero / 3
   
   Escreva("O dobro de ", numero, " é ", dobro)
   Escreva("A terça parte de ", numero, " é ", terceiraParte)
FimAlgoritmo
