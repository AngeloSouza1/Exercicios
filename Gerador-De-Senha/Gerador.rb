# Função para gerar uma senha segura
def gerar_senha(tamanho, usa_maiusculas, usa_minusculas, usa_numeros, usa_especiais)
    # Define os caracteres possíveis para cada categoria
    caracteres_maiusculos = ('A'..'Z').to_a
    caracteres_minusculos = ('a'..'z').to_a
    caracteres_numeros = ('0'..'9').to_a
    caracteres_especiais = '!@#$%^&*()-_+=<>?/[]{}|'.split('')
  
    # Inicializa um array vazio para a senha
    senha = []
  
    # Adiciona pelo menos um caractere de cada categoria, se necessário
    senha << caracteres_maiusculos.sample if usa_maiusculas
    senha << caracteres_minusculos.sample if usa_minusculas
    senha << caracteres_numeros.sample if usa_numeros
    senha << caracteres_especiais.sample if usa_especiais
  
    # Preenche o restante da senha com caracteres aleatórios
    caracteres_disponiveis = []
    caracteres_disponiveis += caracteres_maiusculos if usa_maiusculas
    caracteres_disponiveis += caracteres_minusculos if usa_minusculas
    caracteres_disponiveis += caracteres_numeros if usa_numeros
    caracteres_disponiveis += caracteres_especiais if usa_especiais
  
    (tamanho - senha.length).times do
      senha << caracteres_disponiveis.sample
    end
  
    # Embaralha os caracteres da senha para torná-la mais segura
    senha = senha.shuffle.join
  
    # Retorna a senha gerada
    senha
  end
  
  # Exemplo de uso:
  tamanho_da_senha = 12
  usa_maiusculas = true
  usa_minusculas = true
  usa_numeros = true
  usa_especiais = true
  
  senha_gerada = gerar_senha(tamanho_da_senha, usa_maiusculas, usa_minusculas, usa_numeros, usa_especiais)
  puts "Senha gerada: #{senha_gerada}"
  