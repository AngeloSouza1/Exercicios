# Criando uma lambda que capitaliza a primeira letra de um nome
capitalizar_primeira_letra = lambda do |nome|
    nome.capitalize
  end
  
  # Definindo o método capitalize_name que chama a lambda duas vezes
  def capitalize_name(lambda, nome1, nome2)
    puts lambda.call(nome1)
    puts lambda.call(nome2)
  end
  
  # Chamando o método capitalize_name com a lambda e dois nomes
  capitalize_name(capitalizar_primeira_letra, "joão", "maria")
