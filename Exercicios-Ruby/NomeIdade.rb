# programa  em ruby, que receba o nome e idade de uma pessoa e no final exiba estes dois dados e unica frase

def obter_dados_pessoa
    print "Digite o seu nome: "
    nome = gets.chomp
  
    print "Digite a sua idade: "
    idade = gets.chomp.to_i
  
    return nome, idade
  end
  
  nome, idade = obter_dados_pessoa
  puts "Olá, meu nome é #{nome} e tenho #{idade} anos."
  