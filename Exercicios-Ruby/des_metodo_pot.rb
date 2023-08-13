# Definindo o método para calcular potência
def calcular_potencia(base, expoente)
    resultado = base ** expoente
    return resultado
  end
  
  # Mensagem de boas-vindas
  puts "Calculadora de Potência"
  
  # Solicitando e obtendo o número base do usuário
  print "Digite o número base: "
  base = gets.chomp.to_f
  
  # Solicitando e obtendo o expoente do usuário
  print "Digite o expoente: "
  expoente = gets.chomp.to_i
  
  # Chamando o método calcular_potencia com os valores fornecidos
  potencia = calcular_potencia(base, expoente)
  
  # Exibindo o resultado da potência
  puts "O resultado de #{base} elevado a #{expoente} é #{potencia}"
