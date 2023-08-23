# Lista de filmes e seus gêneros
$filmes = {
  "Filme 1" => ["Ação", "Aventura"],
  "Filme 2" => ["Comédia", "Romance"],
  "Filme 3" => ["Ação", "Ficção Científica"],
  "Filme 4" => ["Aventura", "Fantasia"],
  "Filme 5" => ["Comédia", "Aventura"]
}

# Função para obter recomendações com base no gênero
def obter_recomendacoes(generos)
  recomendacoes = {}

  $filmes.each do |filme, generos_filme|
    if (generos_filme & generos).any?
      recomendacoes[filme] = generos_filme & generos
    end
  end

  recomendacoes
end

# Simulação de avaliação de filmes
$avaliacoes = {
  "Usuario1" => ["Filme 2"],
  "Usuario2" => ["Filme 3", "Filme 4"]
}

def fazer_recomendacoes(usuario)
  avaliacoes_usuario = $avaliacoes[usuario]

  generos_avaliados = []

  avaliacoes_usuario.each do |filme_avaliado|
    generos_avaliados += $filmes[filme_avaliado]
  end

  generos_avaliados.uniq!

  recomendacoes = obter_recomendacoes(generos_avaliados)

  recomendacoes
end

# Usuário 1
usuario1 = "Usuario1"
recomendacoes_usuario1 = fazer_recomendacoes(usuario1)

# Usuário 2
usuario2 = "Usuario2"
recomendacoes_usuario2 = fazer_recomendacoes(usuario2)

# Exiba as recomendações para o Usuário1
puts "Recomendações para #{usuario1}:"
if recomendacoes_usuario1.empty?
  puts "Nenhuma recomendação disponível. Avalie mais filmes."
else
  recomendacoes_usuario1.each do |filme, generos_recomendados|
    puts "#{filme} (Gêneros: #{generos_recomendados.join(', ')})"
  end
end

# Exiba as recomendações para o Usuário2
puts "\nRecomendações para #{usuario2}:"
if recomendacoes_usuario2.empty?
  puts "Nenhuma recomendação disponível. Avalie mais filmes."
else
  recomendacoes_usuario2.each do |filme, generos_recomendados|
    puts "#{filme} (Gêneros: #{generos_recomendados.join(', ')})"
  end
end
