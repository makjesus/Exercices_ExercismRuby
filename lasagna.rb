





class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40
  MINUTES_PER_LAYER = 2

  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    MINUTES_PER_LAYER * layers
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end

lasagna = Lasagna.new
puts "Faltam ainda no forno : #{lasagna.remaining_minutes_in_oven(30)}"
puts "Tempo preparado em minutos :#{lasagna.preparation_time_in_minutes(3)}"
puts "Tempo total gasto em minutos:#{lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 30)}"


=begin
class Lasagna

  #minutos de duração por padrão
  MINUTOS_ESPERADOS_NO_FORNO  = 40
  MINUTOS_POR_CAMADA = 2

 #minutos que ainda restam no forno
  def minutos_restantes_forno(minutos_atuais_forno)
    MINUTOS_ESPERADOS_NO_FORNO  - minutos_atuais_forno
  end

   #tempo gasto na preparação de forma real
  def tempo_de_preparacao_em_minutos(camadas)
    MINUTOS_POR_CAMADA * camadas
  end

  #tempo total gasto na preparação
  def tempo_total_em_minutos(numero_de_camadas:, minutos_atuais_forno:)
    tempo_de_preparacao_em_minutos(numero_de_camadas) + minutos_atuais_forno
  end
end

lasagna = Lasagna.new
puts "Faltam ainda no forno: #(lasagna.minutos_restantes_forno(30))
puts lasagna.tempo_de_preparacao_em_minutos(3)
puts lasagna.tempo_total_em_minutos(numero_de_camadas: 3, minutos_atuais_forno: 30)
=end
