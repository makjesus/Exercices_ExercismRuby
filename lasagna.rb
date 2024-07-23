# Define a constante com o tempo de cozimento
COOKING_TIME_PER_LAYER = 15

# Função que retorna o tempo total de cozimento baseado no número de camadas
def cooking_time_in_minutes(layers)
  layers * COOKING_TIME_PER_LAYER
end

# Função que calcula o tempo restante com base no tempo de cozimento total e o tempo já passado
def remaining_time_in_minutes(total_cooking_time, elapsed_time)
  total_cooking_time - elapsed_time
end

# Função que retorna o tempo total de cozimento recomendado para a lasanha
def total_cooking_time_in_minutes
  80 # tempo total recomendado para a lasanha
end

# Exemplo de uso das funções
layers = 3
elapsed_time = 20

total_cooking_time = total_cooking_time_in_minutes
remaining_time = remaining_time_in_minutes(total_cooking_time, elapsed_time)
puts "Esse foi o tempo total de cozimento: #{cooking_time_in_minutes(layers)} minutos"
puts "Falta ainda: #{remaining_time} minutos"
