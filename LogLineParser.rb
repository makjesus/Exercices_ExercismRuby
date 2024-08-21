class LogLineParser
  def initialize(log_line)
    @log_line = log_line
  end

  # Método para retornar a mensagem do log
  def message
    # Dividir a linha de log em duas partes, separadas por ": "
    parts = @log_line.split(": ")
    # A segunda parte é a mensagem, remover espaços em branco no início e no fim
    parts[1].strip
  end

  # Método para retornar o nível do log em letras minúsculas
  def log_level
    # Usar expressão regular para capturar o nível do log entre os colchetes
    level = @log_line.match(/\[(.*?)\]/)[1]
    # Retornar o nível em letras minúsculas
    level.downcase
  end

  # Método para reformular a linha de log
  def reformat
    # Obter a mensagem usando o método message
    msg = message
    # Obter o nível do log usando o método log_level
    level = log_level
    # Reformular a linha com a mensagem primeiro e o nível do log em parênteses
    "#{msg} (#{level})"
  end
end

# Exemplos de uso:
puts LogLineParser.new('[ERROR]: Invalid operation').message
# => "Invalid operation"

puts LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
# => "Disk almost full"

puts LogLineParser.new('[ERROR]: Invalid operation').log_level
# => "error"

puts LogLineParser.new('[INFO]: Operation completed').reformat
# => "Operation completed (info)"
