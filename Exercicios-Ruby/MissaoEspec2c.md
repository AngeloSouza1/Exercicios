# O que é Proc em Ruby e qual as diferenças entre ele e o lambda.

Em Ruby, tanto Proc quanto lambda são objetos que representam blocos de código que podem ser armazenados em variáveis e passados como argumentos para métodos. Ambos são usados para criar funções anônimas (ou lambdas) que podem ser tratadas como objetos de primeira classe. No entanto, existem algumas diferenças sutis entre eles:

Como eles tratam os argumentos:

# Proc: 
É mais flexível em relação ao número de argumentos. Se você chamar um Proc com um número incorreto de argumentos, ele simplesmente ignora os extras ou preenche com nil se houver faltando. Isso pode levar a resultados inesperados.

# Lambda:
 É mais rígido em relação ao número de argumentos. Ele verifica estritamente o número de argumentos passados e lançará uma exceção se você fornecer um número incorreto.


Como eles tratam o retorno:

# Proc:
 Retorna o valor da última expressão executada, mesmo se a expressão estiver fora de um bloco condicional.

# Lambda:
 Retorna o valor da última expressão executada apenas se a expressão estiver dentro do bloco condicional e a condição for verdadeira. Se a condição for falsa ou se a expressão estiver fora do bloco condicional, lambda retorna nil.

 Aqui está um exemplo que ilustra essas diferenças:

 # Definindo um Proc que soma dois números e lida com valores nulos ou ausentes
my_proc = Proc.new { |x, y| (x || 0) + (y || 0) }

# Definindo uma lambda que soma dois números e lida com valores nulos ou ausentes
my_lambda = lambda { |x, y| (x || 0) + (y || 0) }

# Exemplo de uso com valores válidos
puts "Exemplo com valores válidos:"
puts "Usando Proc: #{my_proc.call(2, 3)}"     # Retorna 5
puts "Usando lambda: #{my_lambda.call(2, 3)}" # Retorna 5

# Exemplo de uso com um valor ausente (nil)
puts "\nExemplo com valor ausente (nil):"
puts "Usando Proc: #{my_proc.call(2)}"        # Retorna 2, lida com y ausente
# O próximo comando resultaria em erro: wrong number of arguments (given 1, expected 2)
# puts "Usando lambda: #{my_lambda.call(2)}"

# Exemplo de uso com valores nulos
puts "\nExemplo com valores nulos:"
puts "Usando Proc: #{my_proc.call(nil, nil)}"  # Retorna 0, lida com valores nulos
# O próximo comando resultaria em erro: wrong number of arguments (given 1, expected 2)
# puts "Usando lambda: #{my_lambda.call(nil, nil)}"


Em resumo, Proc e lambda são semelhantes, mas as diferenças no tratamento de argumentos e retorno podem afetar o comportamento de suas funções. A escolha entre eles depende dos requisitos específicos do seu código. Se você precisa de maior rigor na contagem de argumentos e no retorno, use lambda. Se você precisa de mais flexibilidade, use Proc.