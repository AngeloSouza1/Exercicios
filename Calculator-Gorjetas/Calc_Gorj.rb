
# Importa a biblioteca 'colorize' para adicionar cores ao texto no terminal
require 'colorize'

# Limpa a tela do terminal (funciona em sistemas Unix e Windows)
system('clear') || system('cls')


# Define o título "Calculadora de Gorjeta" com fundo vermelho e texto branco
puts "Calculadora de Gorjeta".colorize(:white).on_red

# Pula uma linha em branco
puts ""

# Solicita o valor da conta ao usuário e converte a entrada em um número decimal
puts "Digite o valor da conta:"
valor_da_conta = gets.chomp.to_f

# Solicita a porcentagem de gorjeta ao usuário e converte a entrada em um número decimal
puts "Digite a porcentagem de gorjeta que deseja dar:"
porcentagem_de_gorjeta = gets.chomp.to_f

# Calcula a gorjeta multiplicando o valor da conta pela porcentagem de gorjeta
gorjeta = (valor_da_conta * porcentagem_de_gorjeta / 100).round(2)

# Calcula o valor total a ser pago somando a gorjeta ao valor da conta
valor_total = (valor_da_conta + gorjeta).round(2)

# Exibe o valor da gorjeta e o valor total a ser pago
puts "Gorjeta: R$#{gorjeta}".colorize(:yellow)
puts "Total a pagar: R$#{valor_total}".colorize(:yellow)
