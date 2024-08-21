# Define um módulo chamado ContaCorrente
module ContaCorrente
  # Dentro do módulo, define a classe BankAccount
  class BankAccount
    # Define métodos leitores para os atributos account_holder e balance
    attr_reader :account_holder, :balance 

    # Método de inicialização da classe, define o titular da conta e o saldo inicial
    def initialize(account_holder, balance = 0)
      @account_holder = account_holder       # Atribui o titular da conta
      @balance = balance    
                 # Atribui o saldo inicial (padrão é 0)
    end

    def depositPoup(amount)
     if amount > 0
      @balance =+ amount
      puts "Depósito de poupança #{amount} realizado"   
      end
    end
 
    # Método para depositar um valor na conta
    def deposit(amount)
      # Verifica se o valor do depósito é positivo
      if amount > 0
        @balance += amount                  # Adiciona o valor ao saldo
        puts "Depósito de #{amount} realizado" # Mensagem de sucesso
      else
        puts "O valor do depósito deve ser positivo" # Mensagem de erro
      end
    end

    # Método para sacar um valor da conta
    def saque(valor)
      # Verifica se o valor do saque é maior que o saldo
      if valor > @saldo
        puts "Não tem saldo para sacar"      # Mensagem de erro
      # Verifica se o valor do saque é positivo
      elsif valor > 0
        @saldo -= valor                 # Subtrai o valor do saldo
        puts "O saque de #{valor} foi realizado" # Mensagem de sucesso
      else
        puts "Saques somente com valores positivos" # Mensagem de erro
      end
    end

    # Método para exibir o saldo atual da conta
    def display_balance
      @saldo = depositPoup(valor) + deposit(valor)
      puts "O saldo atual é: #{@saldo}"   # Mensagem com o saldo atual
    end
  end
end

# Solicita ao usuário o nome do titular da conta
puts "Digite o nome do cliente:"
account_holder = gets.chomp   # Lê o nome do titular

# Solicita ao usuário o valor do depósito
puts "Digite o valor do depósito:"
  deposit_amount = gets.chomp.to_i   # Lê e converte o valor do depósito para inteiro
 
  puts "Digite o valor do depósito poupança:"
    depositPoup_amount = gets.chomp.to_i
# Solicita ao usuário o valor do saque
puts "Digite o valor do saque:"
saque_valor = gets.chomp.to_i   # Lê e converte o valor do saque para inteiro

# Cria uma nova instância de BankAccount com o nome do titular e saldo inicial padrão
conta = ContaCorrente::BankAccount.new(account_holder)
ContaPoupanca = ContaCorrente::BankAccount.new(account_holder)

# Realiza o depósito solicitado
conta.deposit(deposit_valor)

# Realiza o saque solicitado
conta.withdraw(saque_valor)

# Exibe o saldo atual da conta
conta.display_balance
 