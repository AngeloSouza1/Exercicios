// Neste programa, o usuário é solicitado a inserir os valores de A, B e C, que são lidos 
// nas variáveis a, b e c. Em seguida, o programa calcula o valor de Delta usando a fórmula 
// Δ = b² - 4ac e o armazena na variável delta. 
// Por fim, ele exibe o valor de Delta calculado.


Algoritmo CalculaDelta
Var
   a, b, c, delta: Real

Inicio
   Escreva("Digite o valor de A: ")
   Leia(a)
   
   Escreva("Digite o valor de B: ")
   Leia(b)
   
   Escreva("Digite o valor de C: ")
   Leia(c)
   
   delta <- (b * b) - (4 * a * c)
   
   Escreva("O valor de Delta (Δ) é: ", delta)
FimAlgoritmo
