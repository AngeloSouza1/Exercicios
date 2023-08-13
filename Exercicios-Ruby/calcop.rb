def somar(num1, num2)
  return num1 + num2
end

def subtrair(num1, num2)
  return num1 - num2
end

def multiplicar(num1, num2)
  return num1 * num2
end

def dividir(num1, num2)
  return num1.to_f / num2.to_f
end

loop do
  puts "Escolha uma operação:"
  puts "1. Somar"
  puts "2. Subtrair"
  puts "3. Multiplicar"
  puts "4. Dividir"
  puts "5. Sair"

  escolha = gets.chomp.to_i

  if escolha == 5
    puts "Programa encerrado."
    break
  end

  print "Digite o primeiro número: "
  numero1 = gets.chomp.to_f

  print "Digite o segundo número: "
  numero2 = gets.chomp.to_f

  case escolha
  when 1
    resultado = somar(numero1, numero2)
    puts "Resultado da soma: #{resultado}"
  when 2
    resultado = subtrair(numero1, numero2)
    puts "Resultado da subtração: #{resultado}"
  when 3
    resultado = multiplicar(numero1, numero2)
    puts "Resultado da multiplicação: #{resultado}"
  when 4
    if numero2 == 0
      puts "Não é possível dividir por zero."
    else
      resultado = dividir(numero1, numero2)
      puts "Resultado da divisão: #{resultado}"
    end
  else
    puts "Escolha inválida."
  end
end
