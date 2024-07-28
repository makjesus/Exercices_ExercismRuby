class AssemblyLine
  CARS_PER_HOUR = 221  # Constante que representa o número de carros produzidos por hora com velocidade máxima.

  # Método construtor que inicializa a velocidade da linha de montagem.
  def initialize(speed)
    @speed = speed  # Atribui a velocidade passada como parâmetro à variável de instância @speed.
  end

  # Método que calcula a taxa de produção por hora.
  def production_rate_per_hour
    rate = case @speed  # Determina a taxa de eficiência com base na velocidade.
           when 1..4 then 1.0  # 100% de eficiência para velocidades de 1 a 4.
           when 5..8 then 0.9  # 90% de eficiência para velocidades de 5 a 8.
           when 9 then 0.8  # 80% de eficiência para velocidade 9.
           when 10 then 0.77  # 77% de eficiência para velocidade 10.
           else 0.0  # 0% de eficiência para quaisquer outras velocidades (possível entrada inválida).
           end
    @speed * CARS_PER_HOUR * rate  # Calcula a taxa de produção multiplicando a velocidade, a constante e a taxa de eficiência.
  end

  # Método que calcula o número de itens funcionando por minuto.
  def working_items_per_minute
    (production_rate_per_hour / 60).to_i  # Divide a taxa de produção por hora por 60 para obter a taxa por minuto e converte para inteiro.
  end
end

# Exemplos de uso:
assembly_line = AssemblyLine.new(6)  # Cria uma nova instância da classe AssemblyLine com velocidade 6.
puts assembly_line.production_rate_per_hour  # Imprime a taxa de produção por hora para a velocidade 6 (1193.4).
puts assembly_line.working_items_per_minute  # Imprime o número de itens funcionando por minuto para a velocidade 6 (19).
class AssemblyLine
  CARS_PER_HOUR = 221  # Constante que representa o número de carros produzidos por hora com velocidade máxima.

  # Método construtor que inicializa a velocidade da linha de montagem.
  def initialize(speed)
    @speed = speed  # Atribui a velocidade passada como parâmetro à variável de instância @speed.
  end

  # Método que calcula a taxa de produção por hora.
  def production_rate_per_hour
    rate = case @speed  # Determina a taxa de eficiência com base na velocidade.
           when 1..4 then 1.0  # 100% de eficiência para velocidades de 1 a 4.
           when 5..8 then 0.9  # 90% de eficiência para velocidades de 5 a 8.
           when 9 then 0.8  # 80% de eficiência para velocidade 9.
           when 10 then 0.77  # 77% de eficiência para velocidade 10.
           else 0.0  # 0% de eficiência para quaisquer outras velocidades (possível entrada inválida).
           end
     @speed * CARS_PER_HOUR * rate  # Calcula a taxa de produção multiplicando a velocidade, a constante e a taxa de eficiência.
  end

  # Método que calcula o número de itens funcionando por minuto.
  def working_items_per_minute
    (production_rate_per_hour / 60).to_i  # Divide a taxa de produção por hora por 60 para obter a taxa por minuto e converte para inteiro.
  end
end

# Cria uma nova instância da classe AssemblyLine com velocidade 6.
assembly_line = AssemblyLine.new(6)

# Imprime a taxa de produção por hora para a velocidade 6 (1193.4).
puts assembly_line.production_rate_per_hour

puts assembly_line.working_items_per_minute  # Imprime o número de itens funcionando por minuto para a velocidade 6 (19).


