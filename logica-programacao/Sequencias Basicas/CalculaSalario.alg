// Neste programa, o usuário é solicitado a inserir o número de dias trabalhados no mês, que é lido
// na variável diasTrabalhados. O programa calcula o salário multiplicando o número de dias trabalhados
// pelo número de horas trabalhadas por dia (8 horas) e pelo valor por hora (R$25) e armazena o 
// resultado na variável salario. Por fim, ele exibe o salário calculado.

Algoritmo CalculaSalario
Var
   diasTrabalhados, salario: Real

Inicio
   Escreva("Digite o número de dias trabalhados no mês: ")
   Leia(diasTrabalhados)
   
   salario <- diasTrabalhados * 8 * 25  // 8 horas por dia e R$25 por hora
   
   Escreva("O salário do funcionário é: R$", salario)
FimAlgoritmo
