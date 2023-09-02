class No
    attr_accessor :valor, :proximo
  
    def initialize(valor)
      @valor = valor
      @proximo = nil
    end
  end
  
  class ListaLigada
    attr_accessor :cabeca
  
    def initialize
      @cabeca = nil
    end
  
    def esta_vazia?
      @cabeca.nil?
    end
  
    def inserir(valor)
      novo_no = No.new(valor)
      if esta_vazia?
        @cabeca = novo_no
      else
        atual = @cabeca
        while atual.proximo
          atual = atual.proximo
        end
        atual.proximo = novo_no
      end
    end
  
    def excluir(valor)
      if esta_vazia?
        return
      end
  
      if @cabeca.valor == valor
        @cabeca = @cabeca.proximo
        return
      end
  
      atual = @cabeca
      while atual.proximo
        if atual.proximo.valor == valor
          atual.proximo = atual.proximo.proximo
          return
        end
        atual = atual.proximo
      end
    end
  
    def buscar(valor)
      atual = @cabeca
      while atual
        if atual.valor == valor
          return true
        end
        atual = atual.proximo
      end
      false
    end
  
    def exibir
      atual = @cabeca
      while atual
        print "#{atual.valor} -> "
        atual = atual.proximo
      end
      puts "nil"
    end
  end
  
  # Exemplo de uso da lista ligada
  lista = ListaLigada.new
  
  lista.inserir(1)
  lista.inserir(2)
  lista.inserir(3)
  
  lista.exibir
  # Saída: 1 -> 2 -> 3 -> nil
  
  lista.excluir(2)
  lista.exibir
  # Saída: 1 -> 3 -> nil
  
  puts lista.buscar(1)
  # Saída: true
  
  puts lista.buscar(2)
  # Saída: false
  