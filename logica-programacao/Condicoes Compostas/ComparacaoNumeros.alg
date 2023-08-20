// Neste programa, o usuário é solicitado a inserir dois números inteiros, que são lidos nas variáveis 
// numero1 e numero2. O programa compara esses números usando uma série de condicionais e exibe a mensagem
// apropriada com base na comparação:
// Se numero1 for maior que numero2, o programa informa que o primeiro valor é o maior.
// Se numero2 for maior que numero1, o programa informa que o segundo valor é o maior.
// Se nenhum dos casos acima for verdadeiro, significa que os números são iguais, e o programa informa 
// que não existe valor maior, pois ambos são iguais.

Algoritmo ComparacaoNumeros
Var
   numero1, numero2: Inteiro

Inicio
   Escreva("Digite o primeiro número inteiro: ")
   Leia(numero1)

   Escreva("Digite o segundo número inteiro: ")
   Leia(numero2)

   Se numero1 > numero2 Entao
      Escreva("O primeiro valor é o maior.")
   Senao Se numero2 > numero1 Entao
      Escreva("O segundo valor é o maior.")
   Senao
      Escreva("Não existe valor maior, os dois são iguais.")
   FimSe
FimAlgoritmo
