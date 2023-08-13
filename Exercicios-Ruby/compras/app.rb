# No arquivo app.rb
require_relative 'produto'
require_relative 'mercado'

# Criando uma instância da classe Produto e atribuindo valores aos atributos
produto1 = Produto.new("Calca Jeans", 329.99)

# Criando uma instância da classe Mercado e passando uma instância de Produto como parâmetro
mercado = Mercado.new(produto1)

# Exibindo informações do produto no mercado
mercado.exibir_produto
mercado.comprar
