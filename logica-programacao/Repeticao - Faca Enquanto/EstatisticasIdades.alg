// Neste programa, usamos um loop "faça enquanto" para ler a idade de várias pessoas 
// até que o usuário decida parar. Durante a leitura, calculamos a soma das idades, a
// média das idades e contamos quantas pessoas têm 21 anos ou mais. No final, exibimos 
// todas as estatísticas solicitadas.

Algoritmo EstatisticasIdades
Var
   idade, somaIdades: Inteiro
   contadorIdades, pessoasMaisDe21: Inteiro
   continuar: Caractere

Inicio
   somaIdades <- 0
   contadorIdades <- 0
   pessoasMaisDe21 <- 0

   Repita
      Escreva("Digite a idade da pessoa: ")
      Leia(idade)
      
      somaIdades <- somaIdades + idade
      contadorIdades <- contadorIdades + 1
      
      Se idade >= 21 Entao
         pessoasMaisDe21 <- pessoasMaisDe21 + 1
      FimSe
      
      Escreva("Deseja continuar digitando idades? (S para sim, qualquer outra tecla para não): ")
      Leia(continuar)
   Ate continuar <> "S" E continuar <> "s"

   Escreva("a) Quantidade de idades digitadas: ", contadorIdades)
   
   Se contadorIdades > 0 Entao
      Escreva("b) Média das idades digitadas: ", somaIdades / contadorIdades)
   Senao
      Escreva("b) Nenhuma idade foi digitada.")
   FimSe

   Escreva("c) Quantidade de pessoas com 21 anos ou mais: ", pessoasMaisDe21)
FimAlgoritmo
