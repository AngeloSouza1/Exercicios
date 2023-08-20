// Neste programa, o usuário é solicitado a inserir uma distância em metros, 
// que é lida na variável metros. Em seguida, o programa realiza as conversões
// necessárias para quilômetros, hectômetros, decâmetros, decímetros, centímetros 
// e milímetros e, em seguida, exibe os resultados formatados.


Algoritmo ConversaoDistancia
Var
   metros, quilometros, hectometros, decametros, decimetros, centimetros, milimetros: Real

Inicio
   Escreva("Digite uma distância em metros: ")
   Leia(metros)
   
   quilometros <- metros / 1000
   hectometros <- metros / 100
   decametros <- metros / 10
   decimetros <- metros * 10
   centimetros <- metros * 100
   milimetros <- metros * 1000

   Escreva("A distância de ", metros, "m corresponde a:")
   Escreva(quilometros, " Km")
   Escreva(hectometros, " Hm")
   Escreva(decametros, " Dam")
   Escreva(decimetros, " dm")
   Escreva(centimetros, " cm")
   Escreva(milimetros, " mm")
FimAlgoritmo
