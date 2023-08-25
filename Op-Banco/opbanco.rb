class ContaBancaria
    def initialize
      @saldo = 0
    end
  
    def depositar(valor)
      if valor > 0
        @saldo += valor
        puts "Depósito de R$#{valor} efetuado com sucesso."
      else
        puts "Valor de depósito inválido."
      end
    end
  
    def sacar(valor)
      if valor > 0 && valor <= @saldo
        @saldo -= valor
        puts "Saque de R$#{valor} efetuado com sucesso."
      else
        puts "Valor de saque inválido ou saldo insuficiente."
      end
    end
  
    def verificar_saldo
      puts "Saldo atual: R$#{@saldo}"
    end
  end
  
  # Criar uma instância da classe ContaBancaria
  minha_conta = ContaBancaria.new
  
  # Realizar operações de depósito e saque
  minha_conta.depositar(100)
  minha_conta.verificar_saldo
  
  minha_conta.sacar(50)
  minha_conta.verificar_saldo
  