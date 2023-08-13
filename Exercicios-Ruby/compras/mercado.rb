require_relative 'produto'

class Mercado
  def initialize(produto)
    @produto = produto
  end

  def exibir_produto
    puts "Produto no mercado: #{@produto.nome}"
  end

  def comprar
    puts "Você comprou o produto #{@produto.nome} no valor de #{@produto.preco}"
  end
end
