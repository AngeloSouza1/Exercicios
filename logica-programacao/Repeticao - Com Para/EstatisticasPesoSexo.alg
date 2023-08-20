// Neste programa, usamos um loop "para" para ler o sexo e o peso de 8 pessoas.
// Durante a leitura, calculamos a soma dos pesos das mulheres, a quantidade de 
// mulheres cadastradas, a quantidade de homens com mais de 100Kg e encontramos
// o maior peso entre os homens. Também calculamos a média de peso das mulheres. 
// No final, exibimos todas as estatísticas solicitadas.

Algoritmo EstatisticasPesoSexo
Var
   sexo: Caractere
   peso, somaPesoMulheres, mediaPesoMulheres, maiorPesoHomens: Real
   mulheresCadastradas, homensMaisDe100Kg, contador: Inteiro

Inicio
   somaPesoMulheres <- 0
   mediaPesoMulheres <- 0
   mulheresCadastradas <- 0
   homensMaisDe100Kg <- 0
   maiorPesoHomens <- 0

   Para contador de 1 ate 8 Faca
      Escreva("Digite o sexo da pessoa (M para masculino, F para feminino): ")
      Leia(sexo)
      
      Escreva("Digite o peso da pessoa em Kg: ")
      Leia(peso)
      
      Se (sexo = "F" Ou sexo = "f") Entao
         somaPesoMulheres <- somaPesoMulheres + peso
         mulheresCadastradas <- mulheresCadastradas + 1
      Senao Se (sexo = "M" Ou sexo = "m") E peso > 100 Entao
         homensMaisDe100Kg <- homensMaisDe100Kg + 1
         Se peso > maiorPesoHomens Entao
            maiorPesoHomens <- peso
         FimSe
      FimSe
   FimPara

   Se mulheresCadastradas > 0 Entao
      mediaPesoMulheres <- somaPesoMulheres / mulheresCadastradas
   FimSe

   Escreva("a) Quantidade de mulheres cadastradas: ", mulheresCadastradas)
   Escreva("b) Quantidade de homens com mais de 100Kg: ", homensMaisDe100Kg)
   
   Se mulheresCadastradas > 0 Entao
      Escreva("c) Média de peso das mulheres: ", mediaPesoMulheres:0.2)
   Senao
      Escreva("c) Nenhuma mulher foi cadastrada.")
   FimSe

   Se homensMaisDe100Kg > 0 Entao
      Escreva("d) Maior peso entre os homens: ", maiorPesoHomens:0.2)
   Senao
      Escreva("d) Nenhum homem com mais de 100Kg foi cadastrado.")
   FimSe
FimAlgoritmo
