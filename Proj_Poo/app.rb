require_relative 'produto'
require_relative 'mercado'

produto = Produto.new
produto.nome = 'Forma de bolo redonda'
produto.preco= 36.00

produto1 = Produto.new
produto1.nome = 'Forma de bolo cenoura'
produto1.preco= 56.00

Mercado.new(produto.nome, produto.preco).comprar
Mercado.new(produto1.nome, produto1.preco).comprar