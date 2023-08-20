// Neste programa, o usuário insere o primeiro termo e a razão da PA. 
// O programa calcula os 10 primeiros termos da PA, exibe-os na tela e
// calcula a soma de todos os termos da sequência.

Algoritmo ProgressaoAritmetica
Var
   primeiroTermo, razao, termoAtual, somaTermos: Real
   contador: Inteiro

Inicio
   Escreva("Digite o primeiro termo da PA: ")
   Leia(primeiroTermo)
   
   Escreva("Digite a razão da PA: ")
   Leia(razao)
   
   termoAtual <- primeiroTermo
   somaTermos <- 0

   Escreva("Os 10 primeiros termos da PA são:")

   Para contador de 1 ate 10 Faca
      Escreva(termoAtual)
      somaTermos <- somaTermos + termoAtual

      termoAtual <- termoAtual + razao

      Se contador < 10 Entao
         Escreva(", ")
      Senao
         Escreva(".")
      FimSe
   FimPara

   Escreva("A soma de todos os termos da PA é: ", somaTermos)
FimAlgoritmo
