text = "Olá, tudo bem? Meu whatsapp é (99) 74321-1234"
pattern = /\(\d{2}\) \d{5}-\d{4}/

match = text.match(pattern)

if match
  puts "Número de telefone encontrado: #{match[0]}"
else
  puts "Nenhum número de telefone encontrado."
end
