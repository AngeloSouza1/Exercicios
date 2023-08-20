// Neste programa, o usuário é solicitado a inserir o salário atual do funcionário,
// que é lido na variável salarioAtual. Em seguida, o programa calcula o novo salário 
// com um aumento de 15%, somando 15% do salário atual (salarioAtual * 0.15) e armazena 
// o resultado na variável novoSalario. Por fim, ele exibe o novo salário calculado.

Algoritmo AumentoSalario
Var
   salarioAtual, novoSalario: Real

Inicio
   Escreva("Digite o salário atual do funcionário: ")
   Leia(salarioAtual)
   
   novoSalario <- salarioAtual + (salarioAtual * 0.15)  // 15% de aumento
   
   Escreva("O novo salário com 15% de aumento é: R$", novoSalario)
FimAlgoritmo




