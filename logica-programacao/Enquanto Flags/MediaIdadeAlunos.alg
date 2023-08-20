// Neste programa, usamos um loop "Enquanto True" para ler a idade dos alunos até
// que a idade 999 seja digitada. Durante a leitura, calculamos a soma das idades 
// e incrementamos o contador de alunos. Quando a idade 999 é inserida, calculamos
// a  média das idades e exibimos a quantidade de alunos na turma e a média de idade
// do grupo. O programa só encerra quando a idade 999 é digitada.

Algoritmo MediaIdadeAlunos
Var
   idade, somaIdades, contadorAlunos: Inteiro
   mediaIdade: Real

Inicio
   somaIdades <- 0
   contadorAlunos <- 0

   Enquanto True Faca
      Escreva("Digite a idade do aluno (ou 999 para encerrar): ")
      Leia(idade)

      Se idade = 999 Entao
         Se contadorAlunos = 0 Entao
            Escreva("Nenhum aluno foi inserido.")
         Senao
            mediaIdade <- somaIdades / contadorAlunos
            Escreva("Quantidade de alunos na turma: ", contadorAlunos)
            Escreva("Média de idade do grupo: ", mediaIdade:0.2)
         FimSe
         Pare
      FimSe
      
      somaIdades <- somaIdades + idade
      contadorAlunos <- contadorAlunos + 1
   FimEnquanto
FimAlgoritmo
