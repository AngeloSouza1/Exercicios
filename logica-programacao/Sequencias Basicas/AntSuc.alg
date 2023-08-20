// Neste programa, o usuário é solicitado a inserir um número inteiro.
// O número é lido na variável numero. Em seguida, o programa calcula 
// o antecessor subtraindo 1 do número e o sucessor somando 1 ao número. 
// Por fim, ele exibe as mensagens formatadas com o antecessor e o sucessor calculados.

Algoritmo AntecessorSucessor
Var
   numero, antecessor, sucessor: Inteiro

Inicio
   Escreva("Digite um número: ")
   Leia(numero)
   
   antecessor <- numero - 1
   sucessor <- numero + 1
   
   Escreva("O antecessor de ", numero, " é ", antecessor)
   Escreva("O sucessor de ", numero, " é ", sucessor)
FimAlgoritmo
