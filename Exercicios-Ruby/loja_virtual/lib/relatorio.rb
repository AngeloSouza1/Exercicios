class Relatorio 
    def initialize(biblioteca)
        @biblioteca = biblioteca
    end
       
    
    def total
       soma = 0.0 
        
       @biblioteca.livros.each do |livro|
            soma = soma + livro.valor
       end
       
       soma
        #@biblioteca.livros.inject(0)
        #{ |tot, livro| tot += livro.valor }  
    end    
end


