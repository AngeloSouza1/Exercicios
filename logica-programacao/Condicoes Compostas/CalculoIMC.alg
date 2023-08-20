// Neste programa, o usuário é solicitado a inserir seu peso em quilogramas (kg) e sua altura
// em metros (m). O programa calcula o IMC usando a fórmula IMC = peso / (altura * altura) e, 
// em seguida, classifica o IMC com base nas faixas especificadas. Ele exibe o IMC calculado e 
// a classificação correspondente.

Algoritmo CalculoIMC
Var
   peso, altura, imc: Real

Inicio
   Escreva("Calculadora de Índice de Massa Corporal (IMC)")
   Escreva("Digite o seu peso (em kg): ")
   Leia(peso)

   Escreva("Digite a sua altura (em metros): ")
   Leia(altura)

   // Calcula o IMC usando a fórmula IMC = peso / (altura * altura)
   imc <- peso / (altura * altura)

   Escreva("Seu IMC é: ", imc:0.2)

   Se imc < 18.5 Entao
      Escreva("Classificação: Abaixo do peso")
   Senao Se imc >= 18.5 E imc < 25 Entao
      Escreva("Classificação: Peso ideal")
   Senao Se imc >= 25 E imc < 30 Entao
      Escreva("Classificação: Sobrepeso")
   Senao Se imc >= 30 E imc < 40 Entao
      Escreva("Classificação: Obesidade")
   Senao
      Escreva("Classificação: Obesidade mórbida")
   FimSe
FimAlgoritmo
