# # Solicita ao usuário inserir o número de WhatsApp
 print "Por favor, insira o número do seu WhatsApp no formato (99)9 9999-9999: "
 seu_numero = gets.chomp

 # Expressão regular para verificar o formato
regex = /^\(\d{2}\)\d{1} \d{4}-\d{4}$/

if seu_numero.match(regex)
  puts "Seu WhatsApp é #{seu_numero}"
  puts "O número de WhatsApp está no formato correto."
else
  puts "O número de WhatsApp não está no formato correto."
end



# # Seu número de WhatsApp
# seu_numero = "(12)9 8855-7147"

# # Expressão regular para verificar o formato
# regex = /^\(\d{2}\)\d{1} \d{4}-\d{4}$/

# if seu_numero.match(regex)
#   puts "Seu WhatsApp é #{seu_numero}"
#   puts "O número de WhatsApp está no formato correto."
# else
#   puts "O número de WhatsApp não está no formato correto."
# end

