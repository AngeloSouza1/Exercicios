// Neste programa, o usuário é solicitado a inserir o nome do cliente, o sexo (M para mulher, H para homem)
// e o valor das compras. O programa verifica o sexo do cliente e calcula o valor com desconto com base 
// nas porcentagens de desconto especificadas. Em seguida, ele exibe o nome do cliente, o valor das 
// compras original e o valor com desconto calculado.

Algoritmo DescontoDiaDaMulher
Var
   nome: caractere
   sexo: caractere
   valorCompras, valorComDesconto: Real

Inicio
   Escreva("Digite o nome do cliente: ")
   Leia(nome)

   Escreva("Digite o sexo do cliente (M para mulher, H para homem): ")
   Leia(sexo)

   Escreva("Digite o valor das compras: ")
   Leia(valorCompras)

   Se sexo = "M" Ou sexo = "m" Entao
      // Mulheres ganham 13% de desconto
      valorComDesconto <- valorCompras - (valorCompras * 0.13)
   Senao
      // Homens ganham 5% de desconto
      valorComDesconto <- valorCompras - (valorCompras * 0.05)
   FimSe

   Escreva("Cliente: ", nome)
   Escreva("Valor das compras: R$", valorCompras:0.2)
   Escreva("Valor com desconto: R$", valorComDesconto:0.2)
FimAlgoritmo
