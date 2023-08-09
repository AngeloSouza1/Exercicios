class UnitConverter
    def initialize
      # Defina um hash que mapeia unidades de origem para unidades de destino e os métodos de conversão correspondentes.
      @conversions = {
        'Celsius' => { 'Fahrenheit' => method(:celsius_to_fahrenheit), 'Kelvin' => method(:celsius_to_kelvin) },
        'Fahrenheit' => { 'Celsius' => method(:fahrenheit_to_celsius), 'Kelvin' => method(:fahrenheit_to_kelvin) },
        'Kelvin' => { 'Celsius' => method(:kelvin_to_celsius), 'Fahrenheit' => method(:kelvin_to_fahrenheit) }
      }
    end
  
    # Métodos de conversão de Celsius para Fahrenheit e Kelvin
    def celsius_to_fahrenheit(value)
      (value * 9 / 5) + 32
    end
  
    def celsius_to_kelvin(value)
      value + 273.15
    end
  
    # Métodos de conversão de Fahrenheit para Celsius e Kelvin
    def fahrenheit_to_celsius(value)
      (value - 32) * 5 / 9
    end
  
    def fahrenheit_to_kelvin(value)
      (value - 32) * 5 / 9 + 273.15
    end
  
    # Métodos de conversão de Kelvin para Celsius e Fahrenheit
    def kelvin_to_celsius(value)
      value - 273.15
    end
  
    def kelvin_to_fahrenheit(value)
      (value - 273.15) * 9 / 5 + 32
    end
  
    # Método principal para realizar a conversão
    def convert(value, from_unit, to_unit)
      # Verifica se a unidade de origem e a unidade de destino estão mapeadas no hash de conversões.
      if @conversions.key?(from_unit) && @conversions[from_unit].key?(to_unit)
        # Chama o método de conversão apropriado e exibe o resultado.
        converted_value = @conversions[from_unit][to_unit].call(value)
        "#{value} #{from_unit} é igual a #{converted_value} #{to_unit}"
      else
        'Conversão não suportada'
      end
    end
  end
  
  # Cria uma instância da classe UnitConverter
  converter = UnitConverter.new
  
  # Exemplos de uso:
  puts converter.convert(25, 'Celsius', 'Fahrenheit')
  puts converter.convert(100, 'Fahrenheit', 'Celsius')
  puts converter.convert(0, 'Celsius', 'Kelvin')
  puts converter.convert(0, 'Kelvin', 'Celsius')
  