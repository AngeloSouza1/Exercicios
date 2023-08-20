// Neste programa, além de verificar se é possível formar um triângulo com base na condição matemática,
// ele também determina o tipo de triângulo com base nos tamanhos dos lados:
// Se todos os lados forem iguais, ele é classificado como "EQUILÁTERO".
// Se pelo menos dois lados forem iguais, ele é classificado como "ISÓSCELES".
// Se todos os lados forem diferentes, ele é classificado como "ESCALENO".
// O programa exibe a mensagem correspondente ao tipo de triângulo formado.

Algoritmo VerificaTipoTriangulo
Var
   lado1, lado2, lado3: Real

Inicio
   Escreva("Digite o tamanho do primeiro lado do triângulo: ")
   Leia(lado1)

   Escreva("Digite o tamanho do segundo lado do triângulo: ")
   Leia(lado2)

   Escreva("Digite o tamanho do terceiro lado do triângulo: ")
   Leia(lado3)

   Se (lado1 < lado2 + lado3) E (lado2 < lado1 + lado3) E (lado3 < lado1 + lado2) Entao
      Escreva("É possível formar um triângulo com esses lados.")

      Se lado1 = lado2 E lado2 = lado3 Entao
         Escreva("Tipo de triângulo: EQUILÁTERO (todos os lados iguais)")
      Senao Se (lado1 = lado2 E lado2 <> lado3) Ou (lado1 = lado3 E lado3 <> lado2) Ou (lado2 = lado3 E lado3 <> lado1) Entao
         Escreva("Tipo de triângulo: ISÓSCELES (dois lados iguais)")
      Senao
         Escreva("Tipo de triângulo: ESCALENO (todos os lados diferentes)")
      FimSe

   Senao
      Escreva("Não é possível formar um triângulo com esses lados.")
   FimSe
FimAlgoritmo
