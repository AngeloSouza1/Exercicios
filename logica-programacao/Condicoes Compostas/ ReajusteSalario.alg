// Neste programa, o usuário insere o salário atual, o gênero do funcionário (M para masculino ou F 
// para feminino) e há quantos anos o funcionário trabalha na empresa. O programa calcula o novo 
// salário com base nas regras fornecidas na tabela de reajuste salarial e exibe o novo salário no final.

Algoritmo ReajusteSalario
Var
   salarioAtual, novoSalario: Real
   genero: Caractere
   anosServico: Inteiro

Inicio
   Escreva("Calculadora de Reajuste Salarial")
   Escreva("Digite o salário atual do funcionário: ")
   Leia(salarioAtual)
   
   Escreva("Digite o gênero do funcionário (M para masculino, F para feminino): ")
   Leia(genero)
   
   Escreva("Digite há quantos anos o funcionário trabalha na empresa: ")
   Leia(anosServico)
   
   Se genero = "F" Ou genero = "f" Entao
      Se anosServico < 15 Entao
         novoSalario <- salarioAtual + (salarioAtual * 0.05)  // Reajuste de 5%
      Senao Se anosServico >= 15 E anosServico <= 20 Entao
         novoSalario <- salarioAtual + (salarioAtual * 0.12)  // Reajuste de 12%
      Senao
         novoSalario <- salarioAtual + (salarioAtual * 0.23)  // Reajuste de 23%
      FimSe
   Senao Se genero = "M" Ou genero = "m" Entao
      Se anosServico < 20 Entao
         novoSalario <- salarioAtual + (salarioAtual * 0.03)  // Reajuste de 3%
      Senao Se anosServico >= 20 E anosServico <= 30 Entao
         novoSalario <- salarioAtual + (salarioAtual * 0.13)  // Reajuste de 13%
      Senao
         novoSalario <- salarioAtual + (salarioAtual * 0.25)  // Reajuste de 25%
      FimSe
   Senao
      Escreva("Gênero inválido. Escolha M para masculino ou F para feminino.")
      Pare
   FimSe
   
   Escreva("O novo salário do funcionário é: R$", novoSalario:0.2)
FimAlgoritmo
