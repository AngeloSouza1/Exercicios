# Função para contar a frequência das palavras em um arquivo
def contar_frequencia_palavras(nome_arquivo)
    # Inicialize um hash vazio para armazenar a frequência das palavras
    frequencia = Hash.new(0)
  
    # Abra o arquivo para leitura
    File.open(nome_arquivo, 'r') do |file|
      # Leia o conteúdo do arquivo linha por linha
      file.each_line do |linha|
        # Divida a linha em palavras usando espaço como separador
        palavras = linha.split
  
        # Itere pelas palavras e atualize a frequência
        palavras.each do |palavra|
          # Remova caracteres especiais e torne a palavra minúscula
          palavra = palavra.gsub(/[^a-zA-Z0-9]/, '').downcase
          frequencia[palavra] += 1 unless palavra.empty?
        end
      end
    end
  
    # Classifique o hash pela frequência em ordem decrescente
    frequencia = frequencia.sort_by { |palavra, contagem| contagem }.reverse.to_h
  
    # Retorne o resultado como um hash
    return frequencia
  end
  
  # Nome do arquivo de texto que você deseja analisar
  nome_arquivo = 'conteudo.txt'
  
  # Chame a função para contar a frequência das palavras
  frequencia = contar_frequencia_palavras(nome_arquivo)
  
  # Exiba as palavras mais frequentes e suas contagens
  frequencia.each do |palavra, contagem|
    puts "#{palavra}: #{contagem}"
  end
  