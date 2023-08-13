#Iniciando a Classe Livro"
class Livro
   attr_accessor :valor
   attr_reader :categoria
   attr_reader :isbn
   attr_reader :autor   
   
    def initialize(autor, isbn = "1", numero_de_paginas, valor ,categoria)
        @autor = autor
        @isbn = isbn
        @numero_de_paginas = numero_de_paginas
        @valor = valor
        @categoria = categoria    
    end

    #deixa a mensagem mais elegante!
    def to_s
        "Autor: #{@autor}, Isbn: #{@isbn}, Páginas:#{@numero_de_paginas}, 
        Categoria: #{@categoria}"
    end

    def eql?(outro_livro)
        @isbn == outro_livro.isbn
    end    

    def hash
        @isbn.hash
    end
        
    
end             

 


#puts File.expand_path("lib/livro")


#-----------testes, sempre na Pasta Loja_Virtual ----------
# IRB
#require File.expand_path ("lib/livro")
#criacao objeto classe Livro
#Livro.new "Angelo Souza", 300

#teste_e_design = Livro.new "Mauricio Aniche","123454",247, 60.9




#web_design_responsivo= Livro.new("Tarcio Zemel","452565", 321)
#puts teste_e_design.preco
#puts web_design_responsivo

#mostra o valor de preco (GET)
#puts teste_e_design.instance_variable_get "@preco"

#mostra o valor de preco alterado (SET)
#puts teste_e_design.instance_variable_set "@preco", 75.5

