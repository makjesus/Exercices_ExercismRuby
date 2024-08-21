class Attendee
  attr_reader :height, :pass_id

  # Inicializa a variável de instância height com o valor fornecido e pass_id como nil (nenhum passe emitido)
  def initialize(height)
    @height = height
    @pass_id = nil
  end

  # Atribui um número de passe à variável de instância pass_id e retorna o pass_id
  def issue_pass!(pass_id)
    @pass_id = pass_id
    @pass_id
  end

  # Revoga o passe atribuindo nil à variável de instância pass_id
  def revoke_pass!
    @pass_id = nil
  end

  # Verifica se o participante tem um passe (retorna true se pass_id não for nil)
  def has_pass?
    !@pass_id.nil?
  end

  # Verifica se a altura do participante é suficiente para o brinquedo (retorna true se a altura for maior ou igual à altura mínima)
  def fits_ride?(min_height)
    @height >= min_height
  end

  # Verifica se o participante está autorizado a usar o brinquedo (tem um passe e altura suficiente)
  def allowed_to_ride?(min_height)
    has_pass? && fits_ride?(min_height)
  end
end

# Criando uma nova instância de Attendee com uma altura de 120 cm
attendee = Attendee.new(120)

# Emitindo um passe com o ID 12345 para o participante
attendee.issue_pass!(12345)

# Verificando se o participante tem um passe (deve retornar true)
puts attendee.has_pass? # true

# Verificando se o participante pode usar um brinquedo com altura mínima de 110 cm (deve retornar true)
puts attendee.fits_ride?(110) # true

# Verificando se o participante está autorizado a usar um brinquedo com altura mínima de 110 cm (deve retornar true)
puts attendee.allowed_to_ride?(110) # true

# Revogando o passe do participante
attendee.revoke_pass!

# Verificando novamente se o participante tem um passe (deve retornar false)
puts attendee.has_pass? # false

# Verificando novamente se o participante está autorizado a usar um brinquedo com altura mínima de 110 cm (deve retornar false)
puts attendee.allowed_to_ride?(110) # false
