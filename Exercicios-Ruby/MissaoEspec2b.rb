# Definindo o módulo Person
module Person
    # Classe Juridic
    class Juridic
      attr_accessor :name, :cnpj
  
      def initialize(name, cnpj)
        @name = name
        @cnpj = cnpj
      end
  
      def add
         "Pessoa Jurídica Adicionada\nNome: #{@name}\nCNPJ: #{@cnpj}"
      end
    end
  
    # Classe Physical (apenas para fins de ilustração)
    class Physical
      attr_accessor :name, :cpf
  
      def initialize(name, cpf)
        @name = name
        @cpf = cpf
      end
  
      def add
        "Pessoa Física Adicionada\nNome: #{@name}\nCPF: #{@cpf}"
      end
    end
  end
  
  # Criando uma instância da classe Juridic e chamando o método add
  juridic_person = Person::Juridic.new('M.C.Inv', '424,123/0001')
  puts juridic_person.add
  