def palavra_mais_longa(lista_de_palavras)
    if lista_de_palavras.empty?
      return "A lista de palavras está vazia."
    end
  
    palavra_mais_longa = lista_de_palavras[0]
  
    lista_de_palavras.each do |palavra|
      if palavra.length > palavra_mais_longa.length
        palavra_mais_longa = palavra
      end
    end
  
    palavra_mais_longa
  end
  
  # Ler uma lista de palavras
  print "Digite uma lista de palavras separadas por espaço: "
  entrada = gets.chomp
  lista_de_palavras = entrada.split
  
  # Chame a função para encontrar a palavra mais longa
  mais_longa = palavra_mais_longa(lista_de_palavras)
  
  # Exiba a palavra mais longa
  puts "A palavra mais longa na lista é: #{mais_longa}"
  