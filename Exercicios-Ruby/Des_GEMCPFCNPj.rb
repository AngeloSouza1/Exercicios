# Importando as gems cpf_cnpj
require 'cpf_cnpj'

# Definindo um método para verificar a validade de CPF ou CNPJ
def verificar_documento(documento)
  if CPF.valid?(documento)
    return "CPF válido!"
  elsif CNPJ.valid?(documento)
    return "CNPJ válido!"
  else
    return "Documento inválido!"
  end
end

# Mensagem de boas-vindas
puts "Verificador de CPF ou CNPJ"

# Solicitando ao usuário que insira um número de CPF ou CNPJ
print "Digite um número de CPF ou CNPJ: "
documento_input = gets.chomp

# Removendo possíveis caracteres não numéricos
documento_input.gsub!(/\D/, '')

# Chamando o método verificar_documento e exibindo o resultado
resultado = verificar_documento(documento_input)
puts resultado
