require File.expand_path('loja')


biblioteca = Biblioteca.new


teste_e_design = Livro.new "angelo souza", "123456", 247, 70.5, :testes
web_desgin_responsivo = Livro.new "hugo souza", "45667789", 189, 67.9, :web_design

biblioteca.adiciona teste_e_design
biblioteca.adiciona web_desgin_responsivo

relatorio = Relatorio.new biblioteca
p relatorio.total





#puts teste_e_design.categoria
#puts web_desgin_responsivo.categoria
#hash = {"123456" => teste_e_design, "45667789" => web_desgin_responsivo}
#puts hash["123456"]
#puts hash["45667789"]

#for categoria, livros in biblioteca.livros do
 #   puts categoria

  #  for livro in livros do
   #     puts livro.valor

    #end     
#end    


#hash = {testes: [teste_e_design], web_design: [web_desgin_responsivo]}
#puts hash.values.flatten
#puts hash[:testes]

#idade = nil

#idade ||= 27
#puts idade

#idade ||= 35
#puts idade

#$teste_e_design = Livro.new "Mauricio Aniche", "126454", 247, 60.9, :testes
#teste_e_design_2 = Livro.new "Mauricio Aniche", "126454", 247, 60.9, :testes

#p teste_e_design.eql? teste_e_design_2
#p teste_e_design.hash== teste_e_design_2.hash

#biblioteca.livros_por_categoria :testes do |livro|
#p livro.autor


