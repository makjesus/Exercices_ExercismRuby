COOKING_TIME_PER_LAYER = 40
RECOMMENDED_COOKING_TIME = 80


# Multiplica o número de camadas pelo tempo de cozimento da lazanha
def cooking_time(layers)
  layers * COOKING_TIME_PER_LAYER
end

# Faz o calculo do tempo restante de cozimento da lazanha baseado no que já foi feito
def remaining_time(layers, elapsed_time)
  total_time = cooking_time(layers)
  total_time - elapsed_time
end

#Faz o calculo das camadas adicionadas na lazanha retornando a quantidade de minutos gastos
#no preparo tendo como exemplo 2 min para preparar
def preparation_time_in_minutes(layers)
  layers * 2
end

#Retorna os minutos totais necessário no preparo da lasanha
#sendo a soma de preparação em minutos e o tempo em que a lasanha
#permaneceu no formo nesse momento
#
def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
  preparation_time = number_of_layers * 2
  total_time = preparation_time + actual_minutes_in_oven
  total_time
end

# Exemplo de uso das funções
layers = 3
elapsed_time = 20

total_cooking_time = cooking_time(layers)
remaining_time = remaining_time(layers, elapsed_time)

puts "Tempo total de cozimento: #{total_cooking_time} minutos"
puts "Tempo restante: #{remaining_time} minutos"
