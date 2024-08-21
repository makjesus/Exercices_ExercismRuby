module ContaBancaria
  # Definimos um módulo chamado ContaBancaria para encapsular as classes relacionadas a contas bancárias.
  class ContaBase
    # Definimos uma classe base chamada ContaBase, que servirá como superclasse para tipos específicos de contas bancárias.
    attr_reader :cliente, :saldo
    # Criamos atributos de leitura para 'cliente' e 'saldo', permitindo que eles sejam acessados, mas não modificados diretamente.

    def initialize(cliente, saldo = 0)
      # Método de inicialização (construtor) que aceita um cliente e um saldo inicial. Se o saldo não for fornecido, ele será zero por padrão.
      @cliente = cliente
      # Atribui o cliente passado ao atributo de instância @cliente.
      @saldo = saldo
      # Atribui o saldo passado ao atributo de instância @saldo.
    end

    def depositar(valor)
      # Método para realizar um depósito na conta.
      if valor > 0
        # Verifica se o valor a ser depositado é positivo.
        @saldo += valor
        # Se o valor for positivo, ele é adicionado ao saldo da conta.
        puts "Depósito de #{valor} realizado na conta"
        # Imprime uma mensagem informando que o depósito foi realizado.
      else
        puts "O valor do depósito deve ser positivo"
        # Se o valor for zero ou negativo, uma mensagem de erro é exibida.
      end
    end

    def sacar(valor)
      # Método para realizar um saque da conta.
      if valor > 0
        # Verifica se o valor do saque é maior que zero.
        puts "Saques somente com valores positivos"
        # Se o valor for zero ou negativo, uma mensagem de erro é exibida.
      elsif valor > saldo_disponivel
        # Verifica se o valor do saque é maior que o saldo disponível.
        puts "Saldo insuficiente. Seu saldo é de #{@saldo} e seu limite é de #{@limite}"
        # Se o valor do saque for maior que o saldo disponível, uma mensagem de erro é exibida.
      else
        @saldo -= valor
        # Se o saque for permitido, o valor é subtraído do saldo.
        puts "O saque de #{valor} foi realizado. Saldo atual: #{@saldo}"
        # Imprime uma mensagem informando que o saque foi realizado e exibe o saldo atual.
      end
    end

    def display_balance
      # Método para exibir o saldo atual da conta.
      puts "O saldo atual é: #{@saldo}"
      # Imprime o saldo atual da conta.
    end

    def saldo_disponivel
      # Método para retornar o saldo disponível. Aqui, é apenas o saldo, mas pode ser sobrescrito por subclasses.
      @saldo
      # Retorna o valor do saldo da conta.
    end
  end

  class ContaCorrente < ContaBase
    # Definimos uma classe ContaCorrente que herda de ContaBase.
    attr_reader :limite
    # Criamos um atributo de leitura para o 'limite', que poderá ser acessado mas não modificado diretamente.

    def initialize(cliente, saldo = 0, limite = 1000)
      # Método de inicialização que aceita um cliente, um saldo inicial, e um limite de crédito. O limite padrão é 1000.
      super(cliente, saldo)
      # Chama o construtor da classe base (ContaBase) para inicializar os atributos comuns (cliente e saldo).
      @limite = limite
      # Atribui o limite de crédito ao atributo de instância @limite.
    end

    def saldo_disponivel
      # Sobrescreve o método saldo_disponivel da classe base.
      @saldo + @limite
      # Retorna o saldo disponível somado ao limite de crédito.
    end
  end

  class ContaPoupanca < ContaBase
    # Definimos uma classe ContaPoupanca que herda de ContaBase.
    # A ContaPoupanca usa o comportamento herdado da ContaBase, então não há necessidade de sobrescrever métodos.
  end
end

# Uso das classes:
puts "Digite o nome do cliente:"
# Pede ao usuário que digite o nome do cliente.
cliente = gets.chomp
# Recebe a entrada do usuário e a atribui à variável 'cliente'.

conta_corrente = ContaBancaria::ContaCorrente.new(cliente)
# Cria uma nova instância de ContaCorrente para o cliente digitado.

puts "Digite o valor do depósito conta corrente:"
# Pede ao usuário para digitar o valor do depósito na conta corrente.
valor_depositar_cc = gets.chomp.to_i
# Recebe a entrada do usuário, converte para inteiro, e a atribui à variável 'valor_depositar_cc'.

conta_corrente.depositar(valor_depositar_cc)
# Chama o método depositar da instância conta_corrente, passando o valor digitado.

puts "Digite o valor do saque conta corrente:"
# Pede ao usuário para digitar o valor do saque na conta corrente.
valor_saque_cc = gets.chomp.to_i
# Recebe a entrada do usuário, converte para inteiro, e a atribui à variável 'valor_saque_cc'.

conta_corrente.sacar(valor_saque_cc)
# Chama o método sacar da instância conta_corrente, passando o valor digitado.

conta_poupanca = ContaBancaria::ContaPoupanca.new(cliente)
# Cria uma nova instância de ContaPoupanca para o cliente digitado.

puts "Digite o valor do depósito poupança:"
# Pede ao usuário para digitar o valor do depósito na conta poupança.
valor_depositar_cp = gets.chomp.to_i
# Recebe a entrada do usuário, converte para inteiro, e a atribui à variável 'valor_depositar_cp'.

conta_poupanca.depositar(valor_depositar_cp)
# Chama o método depositar da instância conta_poupanca, passando o valor digitado.

puts "Digite o valor do saque conta poupança:"
# Pede ao usuário para digitar o valor do saque na conta poupança.
valor_saque_cp = gets.chomp.to_i
# Recebe a entrada do usuário, converte para inteiro, e a atribui à variável 'valor_saque_cp'.
conta_poupanca.sacar(valor_saque_cp)

conta_corrente.display_balance
conta_poupanca.display_balance

