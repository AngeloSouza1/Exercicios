# Hash com os valores
numbers = {A: 10, B: 30, C: 20, D: 25, E: 15}

# Encontra a chave com o maior valor
chave_maior_valor = numbers.key(numbers.values.max)

# Obtém o maior valor do hash
maior_valor = numbers[chave_maior_valor]

# Exibe a chave e o valor do elemento com o maior valor
puts "Chave com maior valor: #{chave_maior_valor}, Valor: #{maior_valor}"
