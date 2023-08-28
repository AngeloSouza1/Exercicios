class JogoDaForca
    def initialize
      @palavras = ["programacao", "computador", "ruby", "desenvolvimento", "jogos", "algoritmo"]
      @palavra_sorteada = @palavras.sample
      @tentativas = 10
      @letras_corretas = []
      @palavra_oculta = "_" * @palavra_sorteada.length
    end
  
    def jogar
      puts "Bem-vindo ao Jogo da Forca!"
      
      while @tentativas > 0
        mostrar_status
        adivinhar_letra
      end
  
      mostrar_resultado
    end
  
    private
  
    def mostrar_status
      puts "Palavra: #{@palavra_oculta}"
      puts "Tentativas restantes: #{@tentativas}"
    end
  
    def adivinhar_letra
      print "Adivinhe uma letra: "
      letra = gets.chomp
  
      if @palavra_sorteada.include?(letra)
        puts "Letra correta!"
        @letras_corretas << letra
  
        atualizar_palavra_oculta
      else
        puts "Letra errada. Tentativas restantes: #{@tentativas - 1}"
      end
  
      @tentativas -= 1
    end
  
    def atualizar_palavra_oculta
      @palavra_oculta = @palavra_sorteada.chars.map do |letra_palavra|
        @letras_corretas.include?(letra_palavra) ? letra_palavra : "_"
      end.join
    end
  
    def mostrar_resultado
      if @palavra_oculta == @palavra_sorteada
        puts "Parabéns, você venceu!"
      else
        puts "Você perdeu. A palavra era: #{@palavra_sorteada}"
      end
    end
  end
  
  # Criar uma instância do jogo e jogar
  jogo = JogoDaForca.new
  jogo.jogar
  