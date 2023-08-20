// Neste programa, usamos um loop "faça enquanto" para ler vários números até que
// o usuário decida parar. Durante a leitura, calculamos o somatório dos números, 
// encontramos o menor número, contamos quantos números são pares e calculamos a média
// dos números. No final, exibimos todas as estatísticas solicitadas.


Algoritmo EstatisticasNumeros
Var
   numero, somaNumeros, menorNumero, contadorNumeros, numerosPares: Inteiro
   continuar: Caractere
   mediaNumeros: Real

Inicio
   somaNumeros <- 0
   menorNumero <- 0
   contadorNumeros <- 0
   numerosPares <- 0

   Repita
      Escreva("Digite um número: ")
      Leia(numero)
      
      somaNumeros <- somaNumeros + numero
      contadorNumeros <- contadorNumeros + 1
      
      Se contadorNumeros = 1 Ou numero < menorNumero Entao
         menorNumero <- numero
      FimSe
      
      Se numero % 2 = 0 Entao
         numerosPares <- numerosPares + 1
      FimSe
      
      Escreva("Deseja continuar digitando números? (S para sim, qualquer outra tecla para não): ")
      Leia(continuar)
   Ate continuar <> "S" E continuar <> "s"

   Se contadorNumeros > 0 Entao
      mediaNumeros <- somaNumeros / contadorNumeros
   FimSe

   Escreva("a) Somatório de todos os valores: ", somaNumeros)
   Escreva("b) Menor valor digitado: ", menorNumero)
   
   Se contadorNumeros > 0 Entao
      Escreva("c) Média de todos os valores: ", mediaNumeros)
   Senao
      Escreva("c) Nenhum número foi digitado.")
   FimSe

   Escreva("d) Quantidade de valores pares: ", numerosPares)
FimAlgoritmo
