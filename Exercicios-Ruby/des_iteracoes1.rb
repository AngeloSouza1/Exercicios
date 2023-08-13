# Cria um array vazio para armazenar os números
numeros = []

# Solicita que o usuário insira 3 números
3.times do |i|
  print "Digite o número #{i + 1}: "  # Solicitação ao usuário para inserir um número
  numeros << gets.chomp.to_f  # Lê o número inserido e o converte para um float, adicionando-o ao array 'numeros'
end

puts "Resultados:"

# Calcula e exibe o resultado de cada número elevado à segunda potência
numeros.each do |numero|
  resultado = numero ** 2  # Calcula o resultado elevando o número à segunda potência
  puts "#{numero} elevado à segunda potência é: #{resultado}"  # Exibe o número original e o resultado calculado
end
