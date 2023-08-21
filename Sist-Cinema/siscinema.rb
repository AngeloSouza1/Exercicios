class Cinema
    def initialize
      @sessoes_e_precos = {
        "Sessão 1" => 10.00,
        "Sessão 2" => 12.00,
        "Sessão 3" => 8.00
      }
      @reservas = {}
    end
  
    def mostrar_sessoes_e_precos
      puts "Bem-vindo ao sistema de reservas do cinema!"
      puts "Escolha a sessão desejada:"
      @sessoes_e_precos.each do |sessao, preco|
        puts "#{sessao}: R$#{preco}"
      end
    end
  
    def fazer_reserva
      mostrar_sessoes_e_precos
      puts "Digite o nome da sessão: "
      sessao_escolhida = gets.chomp
  
      if @sessoes_e_precos.key?(sessao_escolhida)
        puts "Quantos ingressos você deseja reservar?"
        quantidade_ingressos = gets.to_i
        preco_unitario = @sessoes_e_precos[sessao_escolhida]
        preco_total = preco_unitario * quantidade_ingressos
  
        if quantidade_ingressos <= 0
          puts "Número inválido de ingressos."
        else
          if @reservas.key?(sessao_escolhida)
            @reservas[sessao_escolhida] += quantidade_ingressos
          else
            @reservas[sessao_escolhida] = quantidade_ingressos
          end
  
          puts "Reserva realizada com sucesso!"
          puts "Preço total: R$#{preco_total}"
        end
      else
        puts "Sessão não encontrada."
      end
    end
  
    def mostrar_reservas
      puts "Reservas atuais:"
      @reservas.each do |sessao, quantidade|
        puts "#{sessao}: #{quantidade} ingressos"
      end
    end
  end
  
  # Criar uma instância do cinema
  cinema = Cinema.new
  
  loop do
    puts "\nEscolha uma opção:"
    puts "1. Fazer reserva"
    puts "2. Mostrar reservas"
    puts "3. Sair"
    opcao = gets.to_i
  
    case opcao
    when 1
      cinema.fazer_reserva
    when 2
      cinema.mostrar_reservas
    when 3
      puts "Obrigado por usar o sistema de reservas do cinema. Até a próxima!"
      break
    else
      puts "Opção inválida. Tente novamente."
    end
  end
  