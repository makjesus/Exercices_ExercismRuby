COOKING_TIME_PER_LAYER = 40
RECOMMENDED_COOKING_TIME = 80

# Função que calcula o tempo total de cozimento baseado no número de camadas
def cooking_time(layers)
  layers * COOKING_TIME_PER_LAYER
end

# Função que calcula o tempo restante com base no número de camadas e o tempo já passado
def remaining_time(layers, elapsed_time)
  total_time = cooking_time(layers)
  total_time - elapsed_time
end

# Exemplo de uso das funções
layers = 3
elapsed_time = 20

total_cooking_time = cooking_time(layers)
remaining_time = remaining_time(layers, elapsed_time)

puts "Tempo total de cozimento: #{total_cooking_time} minutos"
puts "Tempo restante: #{remaining_time} minutos"
