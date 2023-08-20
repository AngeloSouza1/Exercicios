// Neste programa em Visualg, o usuário insere a velocidade do carro, que é lida na variável velocidade. 
// O programa verifica se a velocidade está acima do limite (80 Km/h) e, se estiver, calcula o valor da 
// multa (R$5 por cada Km acima do limite) e exibe uma mensagem informando sobre a multa e o valor da 
// mesma. Caso a velocidade esteja dentro do limite, o programa informa que não há multa e incentiva a 
// dirigir com segurança.

Algoritmo MultaVelocidade
Var
   velocidade, limiteVelocidade, valorMulta: Real

Inicio
   limiteVelocidade <- 80  // Limite de velocidade em Km/h
   valorMulta <- 0

   Escreva("Digite a velocidade do carro (em Km/h): ")
   Leia(velocidade)

   Se velocidade > limiteVelocidade Então
      valorMulta <- (velocidade - limiteVelocidade) * 5  // R$5 por cada Km acima do limite
      Escreva("Você foi multado por excesso de velocidade!")
      Escreva("O valor da multa é de R$", valorMulta:0.2)
   Senão
      Escreva("Velocidade dentro do limite permitido. Dirija com segurança!")
   FimSe
FimAlgoritmo
