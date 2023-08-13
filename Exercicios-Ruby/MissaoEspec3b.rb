class Carro
    def get_km(info)
      # Chama o método privado find_km e passa a informação como parâmetro
      result = find_km(info)
  
      # Imprime o resultado
      puts "Velocidade do carro: #{result}"
    end
  
    private
  
    def find_km(info)
      # Usa uma expressão regular para localizar "80 km/h" na string
      match = info.match(/\d+\s?km\/h/)
  
      # Retorna o resultado encontrado ou uma mensagem de erro
      if match
        return match[0]  # Retorna a correspondência encontrada
      else
        return "Nenhuma correspondência encontrada."
      end
    end
  end
  
  # Criando uma instância da classe Carro
  car = Carro.new
  
  # Chamando o método público get_km com a informação fornecida
  car.get_km("Um fusca de cor amarela viaja a 80 km/h")
