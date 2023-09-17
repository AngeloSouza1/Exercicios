loop do
    puts "Selecione a operação:"
    puts "1 - Soma"
    puts "2 - Subtração"
    puts "3 - Multiplicação"
    puts "4 - Divisão"
    puts "0 - Sair"
    print "Escolha uma opção: "
  
    escolha = gets.chomp.to_i
  
    if escolha == 0
      puts "Saindo da calculadora."
      break
    elsif escolha >= 1 && escolha <= 4
      print "Digite o primeiro número: "
      num1 = gets.chomp.to_f
  
      print "Digite o segundo número: "
      num2 = gets.chomp.to_f
  
      case escolha
      when 1
        resultado = num1 + num2
        operacao = "soma"
      when 2
        resultado = num1 - num2
        operacao = "subtração"
      when 3
        resultado = num1 * num2
        operacao = "multiplicação"
      when 4
        if num2 == 0
          puts "Erro: divisão por zero."
          next
        else
          resultado = num1 / num2
          operacao = "divisão"
        end
      end
  
      puts "O resultado da #{operacao} é: #{resultado}"
    else
      puts "Opção inválida. Escolha uma opção válida (de 0 a 4)."
    end
  end
  