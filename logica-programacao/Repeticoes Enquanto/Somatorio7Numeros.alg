// Neste programa, usamos um loop "Para" para ler 7 números inteiros e somá-los ao valor da variável 
// "somatório". No final do loop, exibimos o somatório total. O programa solicitará que o usuário 
// insira os números e, em seguida, mostrará a soma deles.

Algoritmo Somatorio7Numeros
Var
   numero, somatorio: Inteiro
   contador: Inteiro

Inicio
   somatorio <- 0

   Para contador de 1 Ate 7 Faca
      Escreva("Digite o ", contador, "º número: ")
      Leia(numero)
      somatorio <- somatorio + numero
   FimPara

   Escreva("O somatório dos 7 números é: ", somatorio)
FimAlgoritmo
