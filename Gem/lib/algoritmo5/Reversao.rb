def reverter_rotacao_direita_matriz(matriz, k)
  n = matriz.length  # Número de elementos na matriz

  # Se k for maior ou igual a n, não há rotação necessária, retorna a matriz original
  if k >= n
    return matriz
  end

  nova_matriz = []

  # 1. Itera por grupos de elementos da matriz, cada grupo contendo "n" elementos
  matriz.each_slice(n) do |linha|
    nova_linha = []

    # 2. Copia os últimos "k" elementos da linha para a nova linha
    linha[-k..-1].each { |elemento| nova_linha << elemento } if k > 0

    # 3. Copia os elementos restantes da linha para a nova linha
    linha[0...n-k].each { |elemento| nova_linha << elemento }

    # 4. Adiciona a nova linha à nova matriz
    nova_matriz << nova_linha
  end

  # 5. Retorna a matriz rotacionada revertida como um array
  nova_matriz.flatten
end
