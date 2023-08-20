// Neste programa, o usuário é solicitado a inserir a largura e altura da parede em metros,
// que são lidas nas variáveis largura e altura. O programa calcula a área da parede multiplicando
// a largura pela altura e, em seguida, divide a área pelo valor 2 (já que cada litro de tinta
// pinta 2 metros quadrados). Por fim, ele exibe a área a ser pintada e a quantidade de litros 
// de tinta necessários para o serviço.

Algoritmo CalculaTinta
Var
   largura, altura, areaPintada, litrosTinta: Real

Inicio
   Escreva("Digite a largura da parede (em metros): ")
   Leia(largura)
   
   Escreva("Digite a altura da parede (em metros): ")
   Leia(altura)
   
   areaPintada <- largura * altura
   litrosTinta <- areaPintada / 2.0  // Cada litro de tinta pinta 2 metros quadrados
   
   Escreva("A área a ser pintada é de ", areaPintada, " metros quadrados.")
   Escreva("Serão necessários ", litrosTinta, " litros de tinta.")
FimAlgoritmo
