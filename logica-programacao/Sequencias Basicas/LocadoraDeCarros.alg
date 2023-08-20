// Neste programa, o usuário é solicitado a inserir a quantidade de quilômetros percorridos, 
// que é lida na variável kmPercorridos, e a quantidade de dias pelos quais o carro foi alugado,
// que é lida na variável diasAlugados. O programa calcula o preço total a pagar multiplicando
// o número de dias alugados pelo custo por dia (90 reais por dia) e adicionando o custo dos 
// quilômetros rodados (0,20 reais por quilômetro) e armazena o resultado na variável precoTotal. 
// Por fim, ele exibe o preço total calculado.


Algoritmo LocadoraDeCarros
Var
   kmPercorridos, diasAlugados, precoTotal: Real

Inicio
   Escreva("Quantidade de Km percorridos: ")
   Leia(kmPercorridos)
   
   Escreva("Quantidade de dias alugados: ")
   Leia(diasAlugados)
   
   precoTotal <- (diasAlugados * 90) + (kmPercorridos * 0.20)
   
   Escreva("O preço total a pagar é: R$", precoTotal)
FimAlgoritmo
