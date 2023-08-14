def caracteres_ausentes_para_pangram(string)
  alfabeto = ('a'..'z').to_a
  letras_string = string.downcase.chars.uniq
  caracteres_faltantes = alfabeto - letras_string

  if caracteres_faltantes.empty?
    'A string já é um pangram.'
  elsif letras_string.none? { |letra| 'aeiou'.include?(letra) }
    if string.empty?
      'Faltam as seguintes letras: ' + alfabeto.join(', ')
    else
      'Faltam as seguintes letras: a, e, i, o, u'
    end
  else
    faltantes = caracteres_faltantes.join(', ')
    "Faltam as seguintes letras: #{faltantes}"
  end
end

# # Exemplo de uso:
# string1 = "rhythm"
# resultado1 = caracteres_ausentes_para_pangram(string1)
# puts resultado1

# string2 = ""
# resultado2 = caracteres_ausentes_para_pangram(string2)
# puts resultado2

#   # # Exemplo de uso:
#   # string = "the quick brown fo jumps over the lazy dog "
#   # puts caracteres_ausentes_para_pangram(string)
  




