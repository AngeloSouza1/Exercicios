// Neste programa, o usuário insere a quantidade de horas de atividade física realizadas no mês.
// O programa calcula os pontos com base nas regras fornecidas (2 pontos por hora até 10 horas,
// 5 pontos por hora de 10 a 20 horas e 10 pontos por hora acima de 20 horas) e, em seguida, 
// calcula o dinheiro ganho com base nos pontos (cada ponto vale R$0,05). O programa exibe a
// quantidade de pontos e o valor em dinheiro ganho.

Algoritmo CalculoPontosAtividade
Var
   horasAtividade, pontos: Real
   dinheiroGanho: Real

Inicio
   Escreva("Calculadora de Pontos e Dinheiro por Atividade Física")
   Escreva("Digite a quantidade de horas de atividade física no mês: ")
   Leia(horasAtividade)
   
   Se horasAtividade <= 10 Entao
      pontos <- horasAtividade * 2
   Senao Se horasAtividade <= 20 Entao
      pontos <- 10 * 2 + (horasAtividade - 10) * 5
   Senao
      pontos <- 10 * 2 + 10 * 5 + (horasAtividade - 20) * 10
   FimSe
   
   dinheiroGanho <- pontos * 0.05  // Cada ponto vale R$0,05
   
   Escreva("Você ganhou ", pontos, " pontos.")
   Escreva("Isso corresponde a R$", dinheiroGanho:0.2)
FimAlgoritmo
