// Neste programa, o usuário é solicitado a inserir a largura e o comprimento do terreno, que são 
// lidos nas variáveis largura e comprimento. O programa calcula a área do terreno multiplicando a 
// largura pelo comprimento e armazena o resultado na variável area. Em seguida, ele verifica a 
// classificação do terreno com base na área calculada e exibe a mensagem correspondente à classificação.

Algoritmo ClassificacaoTerreno
Var
   largura, comprimento, area: Real

Inicio
   Escreva("Digite a largura do terreno (em metros): ")
   Leia(largura)

   Escreva("Digite o comprimento do terreno (em metros): ")
   Leia(comprimento)

   // Calcula a área do terreno
   area <- largura * comprimento

   Escreva("A área do terreno é de ", area:0.2, " m².")

   Se area < 100 Entao
      Escreva("Classificação: TERRENO POPULAR")
   Senao Se area >= 100 E area <= 500 Entao
      Escreva("Classificação: TERRENO MASTER")
   Senao
      Escreva("Classificação: TERRENO VIP")
   FimSe
FimAlgoritmo
