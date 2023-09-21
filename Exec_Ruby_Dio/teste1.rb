    class Objeto
        def escrever
            p 'Escrevendo'
        end
    end

    class Lapis < Objeto
        def escrever
            p 'Escrevendo com lapis'
        end
    end

    class Caneta < Objeto
        def escrever
            p 'Escrevendo com caneta'
        end
    end

class Teclado < Objeto
end

lapis = Lapis.new
caneta= Caneta.new
teclado=Teclado.new

lapis.escrever
caneta.escrever
teclado.escrever
