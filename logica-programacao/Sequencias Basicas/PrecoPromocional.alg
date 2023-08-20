// Neste programa, o usuário é solicitado a inserir o preço do produto, que é lido na variável 
// precoProduto. Em seguida, o programa calcula o preço promocional com 5% de desconto, subtraindo
// 5% do preço original do produto (precoProduto * 0.05) e armazena o resultado na variável 
// precoPromocional. Por fim, ele exibe o preço promocional calculado.

Algoritmo PrecoPromocional
Var
   precoProduto, precoPromocional: Real

Inicio
   Escreva("Digite o preço do produto: ")
   Leia(precoProduto)
   
   precoPromocional <- precoProduto - (precoProduto * 0.05)  // 5% de desconto
   
   Escreva("O preço promocional com 5% de desconto é: R$", precoPromocional)
FimAlgoritmo
