module SavingsAccount
  # Método para determinar a taxa de juros com base no saldo
  def self.interest_rate(balance)
    case
    when balance < 0
      3.213
    when balance < 1000
      0.5
    when balance < 5000
      1.621
    else
      2.475
    end
  end

  # Método para atualizar o saldo anual com base na taxa de juros
  def self.annual_balance_update(balance)
    rate = interest_rate(balance) # Obtém a taxa de juros com base no saldo
    interest = balance * (rate / 100) # Calcula o interesse
    balance + interest # Retorna o saldo atualizado
  end

  # Método para calcular o número de anos necessários para alcançar o saldo desejado
  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0 # Inicializa o contador de anos
    while current_balance < desired_balance # Enquanto o saldo atual for menor que o saldo desejado
      current_balance = self.annual_balance_update(current_balance) # Atualiza o saldo anual
      years += 1 # Incrementa o contador de anos
    end
    years # Retorna o número de anos
  end
end

# Imprime a taxa de juros para um saldo de 200.75
puts SavingsAccount.interest_rate(200.75)

# Imprime o saldo atualizado após um ano para um saldo de 200.75
puts SavingsAccount.annual_balance_update(200.75)

# Imprime o número de anos necessários para que um saldo de 200.75 alcance 214.88
puts SavingsAccount.years_before_desired_balance(200.75, 214.88)
