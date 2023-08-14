def encontrar_tres_maiores_elementos(arr)
  # Remove elementos duplicados da matriz
  arr = arr.uniq

  # Se a matriz tiver menos de três elementos, preencha com -Infinity
  while arr.length < 3
    arr << -Float::INFINITY
  end

  # Inicializando as variáveis para armazenar os três maiores elementos
  primeiro_maior = -Float::INFINITY
  segundo_maior = -Float::INFINITY
  terceiro_maior = -Float::INFINITY

  # Percorrendo a matriz para encontrar os três maiores elementos
  arr.each do |elemento|
    if elemento > primeiro_maior
      # Atualiza os elementos em ordem, mantendo o rastreamento dos três maiores
      terceiro_maior = segundo_maior
      segundo_maior = primeiro_maior
      primeiro_maior = elemento
    elsif elemento > segundo_maior
      terceiro_maior = segundo_maior
      segundo_maior = elemento
    elsif elemento > terceiro_maior
      terceiro_maior = elemento
    end
  end

  # Retorna os três maiores elementos encontrados
  [primeiro_maior, segundo_maior, terceiro_maior]
end



  