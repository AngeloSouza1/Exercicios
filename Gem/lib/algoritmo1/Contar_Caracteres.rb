def contar_caracteres(string)
    # Inicializando contadores para cada tipo de caractere
    caracteres_min = 0  # Contador de caracteres minúsculos
    caracteres_mai = 0  # Contador de caracteres maiúsculos
    caracteres_especiais = 0  # Contador de caracteres especiais
    valores_numericos = 0  # Contador de valores numéricos
  
    # Iterando por cada caractere da string
    string.each_char do |caractere|
      if ('a'..'z').include?(caractere)
        # Se o caractere for minúsculo, incrementa o contador de minúsculos
        caracteres_min += 1
      elsif ('A'..'Z').include?(caractere)
        # Se o caractere for maiúsculo, incrementa o contador de maiúsculos
        caracteres_mai += 1
      elsif ('0'..'9').include?(caractere)
        # Se o caractere for um valor numérico, incrementa o contador de numéricos
        valores_numericos += 1
      else
        # Se o caractere não for minúsculo, maiúsculo ou numérico, incrementa o contador de especiais
        caracteres_especiais += 1
      end
    end
  
    # Retornando os resultados como um hash
    {
      caracteres_min: caracteres_min,
      caracteres_mai: caracteres_mai,
      caracteres_especiais: caracteres_especiais,
      valores_numericos: valores_numericos
    }
  end
  
  # # Exemplo de uso:
  # string = "Olá, Mundo! 123"
  # resultado = contar_caracteres(string)
  # puts "Caracteres minúsculos: #{resultado[:caracteres_min]}"
  # puts "Caracteres maiúsculos: #{resultado[:caracteres_mai]}"
  # puts "Caracteres especiais: #{resultado[:caracteres_especiais]}"
  # puts "Valores numéricos: #{resultado[:valores_numericos]}"
  