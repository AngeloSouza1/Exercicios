class Pessoa
    def initialize(nome, idade)
        @nome = nome
        @idade= idade
    end
    
    def conferencia
        puts "intancia iniciada"
        puts "nome = #{@nome}"
        puts "idade = #{@idade}"
    end
end
 
pessoa = Pessoa.new('Angelo', 43)
pessoa.conferencia
pessoa1 = Pessoa.new('Linda', 12)
pessoa1.conferencia
