class BirdCount
  # Método de classe que retorna a contagem de pássaros da última semana
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]  # Lista fixa de contagens de pássaros para cada dia da semana
  end

  # Método de instância inicializador
  def initialize(bird_counts)
    @bird_counts = bird_counts  # Armazena a contagem de pássaros passada ao criar uma nova instância
  end

  # Método de instância que retorna a contagem de pássaros do dia anterior
  def yesterday
    return nil if @bird_counts.size < 2  # Retorna nil se há menos de dois dias registrados
    @bird_counts[-2]  # Retorna a contagem de pássaros do penúltimo dia
  end

  # Método de instância que calcula o total de pássaros observados
  def total
    @bird_counts.sum  # Retorna a soma total das contagens de pássaros
  end

  # Método de instância que conta os dias com 5 ou mais pássaros
  def busy_days
    @bird_counts.count { |birds| birds >= 5 }  # Conta quantos dias têm 5 ou mais pássaros
  end

  # Método de instância que verifica se houve algum dia sem pássaros
  def day_without_birds?
    @bird_counts.include?(0)  # Retorna true se houver um dia com 0 pássaros, caso contrário, retorna false
  end
end

# Exemplo de uso:
bird_count = BirdCount.new([2, 0, 5, 1, 0])  # Cria uma nova instância de BirdCount com uma lista 
# personalizada de contagens de pássaros

puts BirdCount.last_week()       # Exibe a contagem de pássaros da última semana: [0, 2, 5, 3, 7, 8, 4]
puts bird_count.yesterday()      # Exibe a contagem de pássaros do dia anterior: 1
puts bird_count.total()          # Exibe o total de pássaros observados: 8
puts bird_count.busy_days()      # Exibe o número de dias com 5 ou mais pássaros: 1
puts bird_count.day_without_birds? # Exibe se houve algum dia sem pássaros: true
