def calcular(expressao)
    begin
      resultado = eval(expressao)
      return resultado
    rescue
      return "Expressão inválida"
    end
  end
  
  # Solicitar que o usuário insira uma expressão matemática
  print "Digite uma expressão matemática: "
  expressao = gets.chomp
  
  # Calcular o resultado da expressão e exibi-lo
  resultado = calcular(expressao)
  puts "Resultado: #{resultado}"
  