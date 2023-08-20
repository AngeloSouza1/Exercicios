// Neste programa, o usuário é solicitado a inserir o nome do funcionário, seu salário e quantos 
// anos ele trabalha na empresa. O programa verifica a quantidade de anos trabalhados e, com base
// na tabela de reajuste, calcula o novo salário do funcionário. Em seguida, ele exibe o nome do 
// funcionário, o salário anterior e o novo salário após o reajuste.

Algoritmo ReajusteSalario
Var
   nome: caractere
   salario, novoSalario: Real
   anosTrabalhados: Inteiro

Inicio
   Escreva("Digite o nome do funcionário: ")
   Leia(nome)

   Escreva("Digite o salário do funcionário: R$")
   Leia(salario)

   Escreva("Digite quantos anos o funcionário trabalha na empresa: ")
   Leia(anosTrabalhados)

   Se anosTrabalhados <= 3 Entao
      // Aumento de 3% para até 3 anos de empresa
      novoSalario <- salario + (salario * 0.03)
   Senao Se anosTrabalhados <= 10 Entao
      // Aumento de 12.5% para entre 3 e 10 anos de empresa
      novoSalario <- salario + (salario * 0.125)
   Senao
      // Aumento de 20% para 10 anos ou mais de empresa
      novoSalario <- salario + (salario * 0.20)
   FimSe

   Escreva("Nome do funcionário: ", nome)
   Escreva("Salário anterior: R$", salario:0.2)
   Escreva("Novo salário: R$", novoSalario:0.2)
FimAlgoritmo
