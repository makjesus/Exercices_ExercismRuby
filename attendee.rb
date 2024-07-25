=begin
Trabalhando com um parque de diversões, você recebeu uma especificação para projetar um sistema para administrar a frequência e os passeios. Você foi encarregado de modelar o Attendee (pessoa que visita o parque).

Implemente o método Attendee#initialize da classe Attendee, ele deve tomar uma altura (em centímetros) e armazená-la como uma variável de instância

Implemente o getter Attendee#height da classe Attendee, ele deve retornar a altura das instâncias

Nem todos os participantes compraram um passe de carona, mas precisamos saber se eles têm um passe ou não. Implemente o getter Attendee#pass_id para a classe Attendee, ele deve retornar o pass_id da instância ou nil se o Attendee não tiver um.

Implemente o Attendee#issue_pass! para mutar o estado da instância e defina a variável de instância pass id para o argumento. Deve retornar o ID do passe.

Alguns hóspedes quebram as regras com comportamentos inseguros, então o parque quer ser capaz de revogar passes. Implemente o Attendee#revoke_pass! para mutar o estado da instância, e definir o id de passagem para nil


=end

class Attendee
  attr_reader :height, :pass_id

  def initialize(height)
    @height = height
    @pass_id = nil
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
    @pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end
