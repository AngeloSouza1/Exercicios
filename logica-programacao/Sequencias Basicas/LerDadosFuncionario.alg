//Este programa começa solicitando ao usuário que insira 
//o nome do funcionário usando a função Leia(nome), e então 
//pede que o usuário insira o salário usando Leia(salario). 
//Em seguida, ele usa a função Escreva para exibir a mensagem 
//formatada com o nome e o salário fornecidos.


Algoritmo ExibirSalario
Var
   nome: Caractere
   salario: Real

Inicio
   Escreva("Nome do Funcionário: ")
   Leia(nome)
   Escreva("Salário: ")
   Leia(salario)
   Escreva("O funcionário ", nome, " tem um salário de R$", salario, " em Junho.")
FimAlgoritmo
