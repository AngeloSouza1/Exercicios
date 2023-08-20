// Neste jogo, o jogador escolhe entre Pedra (1), Papel (2) e Tesoura (3), e o computador faz uma 
// escolha aleatória. O resultado é determinado de acordo com as regras do JoKenPo:
// Pedra ganha de Tesoura.
// Tesoura ganha de Papel.
// Papel ganha de Pedra.
// O jogo exibe a escolha do jogador e do computador, e em seguida, informa o resultado (Empate, 
// Vitória do Jogador ou Vitória do Computador).


Algoritmo JogoJoKenPo
Var
   opcoes: Vetor[1..3] de Caractere
   escolhaUsuario, escolhaComputador: Inteiro

Inicio
   opcoes[1] <- "Pedra"
   opcoes[2] <- "Papel"
   opcoes[3] <- "Tesoura"
   
   Escreva("Jogo de JoKenPo (Pedra-Papel-Tesoura)")
   Escreva("Escolha sua jogada:")
   Escreva("1. Pedra")
   Escreva("2. Papel")
   Escreva("3. Tesoura")
   Leia(escolhaUsuario)
   
   Escreva("Você escolheu: ", opcoes[escolhaUsuario])
   
   escolhaComputador <- Aleatorio(1, 3)
   Escreva("O computador escolheu: ", opcoes[escolhaComputador])
   
   Se escolhaUsuario = escolhaComputador Entao
      Escreva("Empate!")
   Senao Se (escolhaUsuario = 1 E escolhaComputador = 3) OU (escolhaUsuario = 2 E escolhaComputador = 1) OU (escolhaUsuario = 3 E escolhaComputador = 2) Entao
      Escreva("Você venceu!")
   Senao
      Escreva("O computador venceu!")
   FimSe
FimAlgoritmo
