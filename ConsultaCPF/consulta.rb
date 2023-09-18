require 'cpf_cnpj'

def validar_cpf(cpf)
  cpf = CPF.new(cpf)

  if cpf.valid?
    puts "CPF válido: #{cpf.formatted}"
  else
    puts "CPF inválido."
  end
end

print "Digite um CPF (somente números): "
cpf_digitado = gets.chomp
p
validar_cpf(cpf_digitado)
