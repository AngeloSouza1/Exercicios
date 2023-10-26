# Cria um array vazio para armazenar os números inseridos pelo usuário
numbers = []

# Solicita ao usuário que insira três números
3.times do |i|
  print "Digite o número #{i + 1}: "
  number = gets.chomp.to_i
  numbers << number
end

# Calcula os números elevados à terceira potência e os armazene em um novo array
cubed_numbers = numbers.map { |num| num ** 3 }

# Exibe o resultado
puts "Os números elevados à terceira potência são: #{cubed_numbers.join(', ')}"
p