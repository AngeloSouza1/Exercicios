// Neste programa, o usuário insere o tipo de carro alugado (P para popular ou L para luxo), 
// a quantidade de dias de aluguel e a quantidade de quilômetros percorridos. O programa calcula 
// o preço total com base nas informações inseridas e na tabela de preços fornecida. O preço é 
// exibido no final.

Algoritmo CalculoAluguelCarro
Var
   tipoCarro: Caractere
   diasAluguel, kmPercorridos: Inteiro
   precoTotal: Real

Inicio
   Escreva("Bem-vindo à locadora de carros!")
   Escreva("Digite o tipo de carro alugado (P para popular ou L para luxo): ")
   Leia(tipoCarro)
   
   Escreva("Digite a quantidade de dias de aluguel: ")
   Leia(diasAluguel)
   
   Escreva("Digite a quantidade de quilômetros percorridos: ")
   Leia(kmPercorridos)

   Se tipoCarro = "P" Ou tipoCarro = "p" Entao
      // Carro popular
      precoTotal <- (diasAluguel * 90)  // Preço do aluguel por dia
      
      Se kmPercorridos <= 100 Entao
         precoTotal <- precoTotal + (kmPercorridos * 0.20)  // Preço por Km até 100Km
      Senao
         precoTotal <- precoTotal + (100 * 0.20) + ((kmPercorridos - 100) * 0.10)  // Preço por Km acima de 100Km
      FimSe
      
   Senao Se tipoCarro = "L" Ou tipoCarro = "l" Entao
      // Carro de luxo
      precoTotal <- (diasAluguel * 150)  // Preço do aluguel por dia
      
      Se kmPercorridos <= 200 Entao
         precoTotal <- precoTotal + (kmPercorridos * 0.30)  // Preço por Km até 200Km
      Senao
         precoTotal <- precoTotal + (200 * 0.30) + ((kmPercorridos - 200) * 0.25)  // Preço por Km acima de 200Km
      FimSe
      
   Senao
      Escreva("Tipo de carro inválido. Escolha P para popular ou L para luxo.")
      Pare
   FimSe
   
   Escreva("O preço total a ser pago é: R$", precoTotal:0.2)
FimAlgoritmo
