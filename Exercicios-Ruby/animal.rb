class Animal
    def pular
        puts 'Toing! Toim! boim! poim!'
    end
    
    def dormir
        puts "Zzzzzz"
    end
    
    class Cachorro < Animal #herança
        def latir
            puts 'Au au'
        end
    end
   
    class Gato < Animal
        def meow
            puts 'Meow'
        end
    end    
       

    cachorro = Cachorro.new
    cachorro.pular
    cachorro.dormir
    cachorro.latir

    cat = Gato.new
    cat.pular
    cat.dormir
    cat.meow

end    