// Neste programa, o usuário é solicitado a inserir duas notas, que são lidas nas variáveis 
// nota1 e nota2. Em seguida, o programa calcula a média das notas e a armazena na variável media. 
// Com base na média calculada, o programa verifica a situação do aluno e exibe a mensagem apropriada 
// de acordo com as faixas de média especificadas.


Algoritmo CalculoMedia
Var
   nota1, nota2, media: Real

Inicio
   Escreva("Digite a primeira nota: ")
   Leia(nota1)

   Escreva("Digite a segunda nota: ")
   Leia(nota2)

   // Calcula a média das notas
   media <- (nota1 + nota2) / 2

   Se media <= 4.9 Entao
      Escreva("Média: ", media:0.1)
      Escreva("Situação: REPROVADO")
   Senao Se media >= 5.0 E media <= 6.9 Entao
      Escreva("Média: ", media:0.1)
      Escreva("Situação: RECUPERAÇÃO")
   Senao
      Escreva("Média: ", media:0.1)
      Escreva("Situação: APROVADO")
   FimSe
FimAlgoritmo
