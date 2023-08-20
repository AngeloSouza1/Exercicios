// Neste programa, o usuário é solicitado a inserir a distância da viagem em quilômetros,
// que é lida na variável distancia. O programa verifica se a distância é menor ou igual 
// a 200 Km e, com base nessa condição, calcula o preço da passagem. Para viagens até 200 Km, 
// o preço é de R$0,50 por Km, enquanto para viagens mais longas, o preço é de R$0,45 por Km. 
// Por fim, o programa exibe o preço calculado da passagem.

Algoritmo CalculaPassagem
Var
   distancia, precoPassagem: Real

Inicio
   Escreva("Digite a distância da viagem (em Km): ")
   Leia(distancia)

   Se distancia <= 200 Entao
      // Viagens até 200 Km custam R$0,50 por Km
      precoPassagem <- distancia * 0.50
   Senao
      // Viagens mais longas custam R$0,45 por Km
      precoPassagem <- distancia * 0.45
   FimSe

   Escreva("O preço da passagem é: R$", precoPassagem:0.2)
FimAlgoritmo
