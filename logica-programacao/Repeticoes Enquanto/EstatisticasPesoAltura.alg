//  Neste programa, usamos um loop "Para" para ler o peso e a altura de 7 pessoas. 
//  Durante a leitura, calculamos a média das alturas, contamos a quantidade de pessoas 
//  com mais de 90 Kg, a quantidade de pessoas com menos de 50 Kg e menos de 1.60 m, e a
//  quantidade de pessoas com mais de 1.90 m e mais de 100 Kg. No final, exibimos todas
//  as estatísticas solicitadas.



Algoritmo EstatisticasPesoAltura
Var
   peso, altura, somaAlturas, mediaAlturas: Real
   pessoasMaisDe90Kg, pessoasMenos50KgMenos160m, pessoasMais190mMais100Kg: Inteiro
   contador: Inteiro

Inicio
   somaAlturas <- 0
   pessoasMaisDe90Kg <- 0
   pessoasMenos50KgMenos160m <- 0
   pessoasMais190mMais100Kg <- 0
  
     
   Para contador de 1 Ate 7 Faca
      Escreva("Digite o peso da pessoa ", contador, " (em Kg): ")
      Leia(peso)
      
      Escreva("Digite a altura da pessoa ", contador, " (em metros): ")
      Leia(altura)
      
      somaAlturas <- somaAlturas + altura
      
      Se peso > 90 Entao
         pessoasMaisDe90Kg <- pessoasMaisDe90Kg + 1
      FimSe
      
      Se peso < 50 E altura < 1.60 Entao
         pessoasMenos50KgMenos160m <- pessoasMenos50KgMenos160m + 1
      FimSe
      
      Se altura > 1.90 E peso > 100 Entao
         pessoasMais190mMais100Kg <- pessoasMais190mMais100Kg + 1
      FimSe
   FimPara

   mediaAlturas <- somaAlturas / 7

   Escreva("a) A média de altura do grupo é: ", mediaAlturas:0.2, " metros")
   Escreva("b) Quantidade de pessoas com mais de 90 Kg: ", pessoasMaisDe90Kg)
   Escreva("c) Quantidade de pessoas com menos de 50 Kg e menos de 1.60 m: ", pessoasMenos50KgMenos160m)
   Escreva("d) Quantidade de pessoas com mais de 1.90 m e mais de 100 Kg: ", pessoasMais190mMais100Kg)
FimAlgoritmo
