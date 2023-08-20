// Neste programa, o usuário é solicitado a inserir a quantidade de dinheiro em reais 
// (R$) na carteira, que é lida na variável dinheiroReais. A taxa de câmbio de 1 dólar 
// para 3,45 reais é armazenada na variável taxaCambio. O programa então calcula a quantidade 
// de dólares que podem ser comprados dividindo o dinheiro em reais pela taxa de câmbio. 
// Por fim, ele exibe a mensagem formatada com a quantidade aproximada 
// de dólares que podem ser comprados.

Algoritmo ConversaoDolar
Var
   dinheiroReais, dinheiroDolares: Real
   taxaCambio: Real

Inicio
   Escreva("Digite a quantidade de dinheiro em reais (R$): ")
   Leia(dinheiroReais)
   
   taxaCambio <- 3.45  // Taxa de câmbio: 1 dólar = 3,45 reais
   dinheiroDolares <- dinheiroReais / taxaCambio
   
   Escreva("Com R$", dinheiroReais, " você pode comprar aproximadamente US$", dinheiroDolares:0.2)
FimAlgoritmo
