class Aluno
    attr_accessor :nome, :idade, :cidade
end


aluno = Aluno.new

aluno.nome = 'Angelo'
puts aluno.nome
aluno.idade = '42'
puts aluno.idade 
aluno.cidade = 'Caçapava'
puts aluno.cidade