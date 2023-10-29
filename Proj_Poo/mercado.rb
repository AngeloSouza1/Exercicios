class Mercado
    def initialize(nome, preco)
        @produto = nome
        @preco = preco
    end
    def comprar
        puts "Você comprou o produto #{@produto}, no valor de #{@preco}"
    end   
end
