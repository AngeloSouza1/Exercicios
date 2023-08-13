# Cria um hash vazio para armazenar os elementos
elementos = {}

# Solicita ao usuário que insira três elementos no hash
3.times do |i|
  print "Digite a chave do elemento #{i + 1}: "
  chave = gets.chomp

  print "Digite o valor do elemento #{i + 1}: "
  valor = gets.chomp

  elementos[chave] = valor  # Adiciona o elemento ao hash com a chave e o valor fornecidos pelo usuário
end

puts "Resultados:"

# Imprime a frase para cada elemento no hash
elementos.each do |chave, valor|
  puts "Uma das chaves é #{chave} e o seu valor é #{valor}"  # Exibe a frase formatada para cada elemento
end
