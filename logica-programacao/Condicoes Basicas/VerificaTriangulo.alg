// Neste programa, o usuário é solicitado a inserir o tamanho de três segmentos de reta, 
// que são lidos nas variáveis lado1, lado2 e lado3. O programa verifica se a condição 
// matemática para a formação de um triângulo é atendida, ou seja, se o comprimento de
// cada lado é menor que a soma dos outros dois lados. Se essa condição for verdadeira 
// para todas as combinações de lados, o programa informa que é possível formar um triângulo; 
// caso contrário, ele informa que não é possível formar um triângulo com os segmentos de 
// reta fornecidos.

Algoritmo VerificaTriangulo
Var
   lado1, lado2, lado3: Real

Inicio
   Escreva("Digite o tamanho do primeiro segmento de reta: ")
   Leia(lado1)

   Escreva("Digite o tamanho do segundo segmento de reta: ")
   Leia(lado2)

   Escreva("Digite o tamanho do terceiro segmento de reta: ")
   Leia(lado3)

   Se (lado1 < lado2 + lado3) E (lado2 < lado1 + lado3) E (lado3 < lado1 + lado2) Entao
      Escreva("É possível formar um triângulo com essas retas.")
   Senao
      Escreva("Não é possível formar um triângulo com essas retas.")
   FimSe
FimAlgoritmo
