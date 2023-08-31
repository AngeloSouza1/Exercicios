class Aluno
    attr_accessor :nome, :idade, :serie, :notas
  
    def initialize(nome, idade, serie)
      @nome = nome
      @idade = idade
      @serie = serie
      @notas = []
    end
  
    def adicionar_nota(nota)
      @notas << nota
    end
  
    def calcular_media
      if @notas.empty?
        return 0.0
      else
        soma = @notas.reduce(:+)
        media = soma.to_f / @notas.length
        return media
      end
    end
  
    def exibir_informacoes
      puts "Nome: #{@nome}"
      puts "Idade: #{@idade} anos"
      puts "Série: #{@serie}"
      puts "Notas: #{@notas.join(', ')}"
      puts "Média: #{calcular_media}"
    end
  end
  
  class Escola
    def initialize
      @alunos = []
    end
  
    def cadastrar_aluno(aluno)
      @alunos << aluno
    end
  
    def listar_alunos
      puts "Lista de Alunos:"
      @alunos.each do |aluno|
        aluno.exibir_informacoes
        puts "------------------------"
      end
    end
  end
  
  # Criar uma instância da escola
  escola = Escola.new
  
  # Cadastrar alunos
  aluno1 = Aluno.new("Alice", 16, "10ª série")
  aluno1.adicionar_nota(8.5)
  aluno1.adicionar_nota(9.0)
  
  aluno2 = Aluno.new("Bob", 17, "11ª série")
  aluno2.adicionar_nota(7.5)
  aluno2.adicionar_nota(8.0)
  
  # Cadastrar os alunos na escola
  escola.cadastrar_aluno(aluno1)
  escola.cadastrar_aluno(aluno2)
  
  # Exibir informações dos alunos
  escola.listar_alunos
  