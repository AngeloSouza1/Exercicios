
//Neste programa, o usuário é solicitado a digitar dois números inteiros.
//Esses números são lidos nas variáveis num1 e num2. Em seguida, o programa 
//calcula a soma desses números e armazena o resultado na variável soma. 
//Por fim, ele exibe a mensagem formatada com a soma dos números.

Algoritmo Somatorio
Var
   num1, num2, soma: Inteiro

Inicio
   Escreva("Digite um valor: ")
   Leia(num1)
   Escreva("Digite outro valor: ")
   Leia(num2)
   
   soma <- num1 + num2
   
   Escreva("A soma entre ", num1, " e ", num2, " é igual a ", soma)
FimAlgoritmo
