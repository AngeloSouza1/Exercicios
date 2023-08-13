# Este programa recebe 2 números inteiros e no final exibe a soma, a subtração, a adição e a divisão entre eles.
def somar(num1, num2)
  num1 + num2
end

def subtrair(num1, num2)
  num1 - num2
end

def multiplicar(num1, num2)
  num1 * num2
end

def dividir(num1, num2)
  num1.to_f / num2.to_f
end

loop do
  puts "Escolha uma operação:"
  puts "1. Somar"
  puts "2. Subtrair"
  puts "3. Multiplicar"
  puts "4. Dividir"
  puts "5. Sair"

  escolha = gets.chomp.to_i

  break if escolha == 5

  if (1..4).include?(escolha)
    print "Digite o primeiro número: "
    numero1 = gets.chomp.to_f

    print "Digite o segundo número: "
    numero2 = gets.chomp.to_f

    case escolha
    when 1
      resultado = somar(numero1, numero2)
      operacao = "soma"
    when 2
      resultado = subtrair(numero1, numero2)
      operacao = "subtração"
    when 3
      resultado = multiplicar(numero1, numero2)
      operacao = "multiplicação"
    when 4
      if numero2 == 0
        puts "Não é possível dividir por zero."
        next
      else
        resultado = dividir(numero1, numero2)
        operacao = "divisão"
      end
    end

    puts "Resultado da #{operacao}: #{resultado}"
  else
    puts "Escolha inválida."
  end
end

puts "Programa encerrado."
