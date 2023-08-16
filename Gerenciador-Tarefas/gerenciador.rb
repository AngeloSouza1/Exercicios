require 'json'

# Classe para representar uma tarefa
class Tarefa
  attr_accessor :descricao, :prazo, :categoria

  def initialize(descricao, prazo, categoria)
    @descricao = descricao
    @prazo = prazo
    @categoria = categoria
  end

  def to_s
    "Descrição: #{@descricao}, Prazo: #{@prazo}, Categoria: #{@categoria}"
  end
end

# Classe para gerenciar tarefas
class GerenciadorTarefas
  def initialize
    @tarefas = []
  end

  def adicionar_tarefa(descricao, prazo, categoria)
    tarefa = Tarefa.new(descricao, prazo, categoria)
    @tarefas << tarefa
    puts "Tarefa adicionada com sucesso!"
  end

  def listar_tarefas
    system 'clear'
    puts "=== Lista de Tarefas ==="
    @tarefas.each_with_index do |tarefa, index|
      puts "#{index + 1}. #{tarefa}"
    end
  end

  def editar_tarefa(index, descricao, prazo, categoria)
    if index >= 0 && index < @tarefas.length
      tarefa = @tarefas[index]
      tarefa.descricao = descricao
      tarefa.prazo = prazo
      tarefa.categoria = categoria
      puts "Tarefa editada com sucesso!"
    else
      puts "Índice inválido!"
    end
  end

  def excluir_tarefa(index)
    if index >= 0 && index < @tarefas.length
      @tarefas.delete_at(index)
      puts "Tarefa excluída com sucesso!"
    else
      puts "Índice inválido!"
    end
  end

  def salvar_tarefas(nome_arquivo)
    File.open(nome_arquivo, 'w') do |file|
      # Serializa as tarefas em formato JSON e escreve no arquivo
      file.write(JSON.dump(@tarefas))
    end
    puts "Tarefas salvas com sucesso em '#{nome_arquivo}' no formato JSON!"
  end

  def carregar_tarefas(nome_arquivo)
    if File.exist?(nome_arquivo)
      tarefas_json = File.read(nome_arquivo)
      # Desserializa as tarefas do arquivo JSON
      @tarefas = JSON.parse(tarefas_json) || []
      puts "Tarefas carregadas com sucesso!"
    else
      puts "O arquivo '#{nome_arquivo}' não existe. Nenhuma tarefa foi carregada."
    end
  end
end

# Código principal
gerenciador = GerenciadorTarefas.new

loop do
  system 'clear'
  puts "===== Gerenciador de Tarefas ====="
  puts "Escolha uma operação:"
  puts "1. Adicionar Tarefa"
  puts "2. Listar Tarefas"
  puts "3. Editar Tarefa"
  puts "4. Excluir Tarefa"
  puts "5. Salvar Tarefas em Arquivo"
  puts "6. Carregar Tarefas de Arquivo"
  puts "7. Sair"
  print "Escolha uma opção: "
  escolha = gets.chomp.to_i

  case escolha
  when 1
    system 'clear'
    puts "===== Adicionar Tarefa ====="
    puts "Descrição da Tarefa:"
    descricao = gets.chomp

    puts "Prazo da Tarefa (formato: dd/mm/yyyy):"
    prazo = gets.chomp

    puts "Categoria da Tarefa:"
    categoria = gets.chomp

    gerenciador.adicionar_tarefa(descricao, prazo, categoria)
    gets.chomp
  when 2
    gerenciador.listar_tarefas
    gets.chomp
  when 3
    system 'clear'
    puts "===== Editar Tarefa ====="
    gerenciador.listar_tarefas
    print "Índice da Tarefa a ser editada: "
    index = gets.chomp.to_i
    puts "Nova Descrição:"
    descricao = gets.chomp
    puts "Novo Prazo (formato: dd/mm/yyyy):"
    prazo = gets.chomp
    puts "Nova Categoria:"
    categoria = gets.chomp
    gerenciador.editar_tarefa(index - 1, descricao, prazo, categoria)
    gets.chomp
  when 4
    system 'clear'
    puts "===== Excluir Tarefa ====="
    gerenciador.listar_tarefas
    print "Índice da Tarefa a ser excluída: "
    index = gets.chomp.to_i
    gerenciador.excluir_tarefa(index - 1)
    gets.chomp
  when 5
    system 'clear'
    puts "===== Salvar Tarefas em Arquivo  ====="
    print "Nome do arquivo para salvar: "
    nome_arquivo = gets.chomp
    gerenciador.salvar_tarefas(nome_arquivo)
    gets.chomp
  when 6
    system 'clear'
    puts "===== Carregar Tarefas de Arquivo  ====="
    print "Nome do arquivo para carregar: "
    nome_arquivo = gets.chomp
    gerenciador.carregar_tarefas(nome_arquivo)
    gets.chomp
  when 7
    system 'clear'
    puts "Saindo do programa..."
    break
  else
    puts "Opção inválida!"
    gets.chomp
  end
end
