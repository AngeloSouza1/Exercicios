// Neste programa, usamos um loop "Para" para ler a idade de 10 pessoas. Durante a leitura, 
// calculamos a soma das idades, a maior idade, a quantidade de pessoas com mais de 18 anos
// e a quantidade de pessoas com menos de 5 anos. No final, calculamos a média das idades e 
// exibimos todas as estatísticas solicitadas.

Algoritmo EstatisticasIdades
Var
   idade, somaIdades, mediaIdades, maiorIdade: Inteiro
   pessoasMaisDe18, pessoasMenosDe5: Inteiro
   contador: Inteiro

Inicio
   somaIdades <- 0
   pessoasMaisDe18 <- 0
   pessoasMenosDe5 <- 0
   maiorIdade <- 0

   Para contador de 1 Ate 10 Faca
      Escreva("Digite a idade da pessoa ", contador, ": ")
      Leia(idade)
      
      somaIdades <- somaIdades + idade
      
      Se idade > maiorIdade Entao
         maiorIdade <- idade
      FimSe
      
      Se idade > 18 Entao
         pessoasMaisDe18 <- pessoasMaisDe18 + 1
      FimSe
      
      Se idade < 5 Entao
         pessoasMenosDe5 <- pessoasMenosDe5 + 1
      FimSe
   FimPara

   mediaIdades <- somaIdades / 10

   Escreva("a) A média de idade do grupo é: ", mediaIdades)
   Escreva("b) Quantidade de pessoas com mais de 18 anos: ", pessoasMaisDe18)
   Escreva("c) Quantidade de pessoas com menos de 5 anos: ", pessoasMenosDe5)
   Escreva("d) A maior idade lida é: ", maiorIdade)
FimAlgoritmo
