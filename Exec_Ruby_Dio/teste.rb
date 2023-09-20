#herança
class Animal
    def dormir
        'zzzz'
    end

    def pular
        'toim, toim'
    end
end

class Gato < Animal
    def miar
        'miau'
    end

end

gato = Gato.new
puts gato.miar
puts gato.dormir
puts gato.pular

#polimorfismo

