// Neste programa, o usuário é solicitado a inserir a quantidade de cigarros fumados por dia e quantos
// anos ele já fumou. O programa calcula o tempo perdido em minutos multiplicando o número de cigarros 
// por dia pelo tempo perdido por cigarro (10 minutos), pelo número de dias em um ano (365), e pelo 
// número de anos fumados. Em seguida, ele divide o resultado por 1440 para converter minutos em dias 
// (1440 minutos por dia) e armazena o resultado na variável tempoPerdidoEmDias. Por fim, ele exibe o 
// número de dias de vida perdidos devido ao hábito de fumar.

Algoritmo ReducaoTempoVida
Var
   cigarrosPorDia, anosFumados, tempoPerdidoEmDias: Inteiro

Inicio
   Escreva("Quantidade de cigarros fumados por dia: ")
   Leia(cigarrosPorDia)
   
   Escreva("Quantos anos você já fumou: ")
   Leia(anosFumados)
   
   tempoPerdidoEmDias <- (cigarrosPorDia * 10 * 365 * anosFumados) / 1440  // 10 minutos por cigarro, 365 dias por ano, 1440 minutos por dia
   
   Escreva("Você perderá aproximadamente ", tempoPerdidoEmDias, " dias de vida devido ao fumo.")
FimAlgoritmo


