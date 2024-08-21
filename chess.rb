module Chess
  # Define um módulo chamado `Chess`.
  # Módulos em Ruby são usados para agrupar métodos, constantes e classes relacionados.

  RANKS = 1..8
  # Define uma constante `RANKS` que representa as fileiras válidas em um tabuleiro de xadrez (1 a 8).

  FILES = 'A'..'H'
  # Define uma constante `FILES` que representa as colunas válidas em um tabuleiro de xadrez (A a H).

  def self.valid_square?(rank, file)
    # Define um método de classe `valid_square?` que verifica se uma posição (rank, file) é válida no tabuleiro de xadrez.
    valid_ranks = RANKS.include?(rank)
    # Verifica se a `rank` (fileira) fornecida está incluída na constante `RANKS`.

    valid_files = FILES.include?(file.upcase)
    # Verifica se a `file` (coluna) fornecida está incluída na constante `FILES`, após converter a letra para maiúscula.

    valid_ranks && valid_files
    # Retorna `true` se ambas as condições (`valid_ranks` e `valid_files`) forem verdadeiras, caso contrário retorna `false`.
  end

  def self.nick_name(first_name, last_name)
    # Define um método de classe `nick_name` que gera um apelido a partir do primeiro nome e do sobrenome.
    
    first_two = first_name.length < 2 ? first_name.ljust(2, first_name).upcase : first_name[0, 2].upcase
    # Se o `first_name` tiver menos de 2 caracteres, preenche o nome à direita com o próprio caractere para ter exatamente 2 letras e converte para maiúsculas.
    # Caso contrário, pega as duas primeiras letras do `first_name` e converte para maiúsculas.

    last_two = last_name.length < 2 ? last_name.ljust(2, last_name).upcase : last_name[-2..-1].upcase
    # Se o `last_name` tiver menos de 2 caracteres, preenche o nome à direita com o próprio caractere para ter exatamente 2 letras e converte para maiúsculas.
    # Caso contrário, pega as duas últimas letras do `last_name` e converte para maiúsculas.

    "#{first_two}#{last_two}"
    # Retorna o apelido, que é a concatenação das duas letras do `first_name` e das duas letras do `last_name`.
  end

  def self.move_message(first_name, last_name, square)
    # Define um método de classe `move_message` que gera uma mensagem de movimento de xadrez com base no nome e na posição do jogador.
    
    nickname = nick_name(first_name, last_name)
    # Chama o método `nick_name` para gerar o apelido a partir do `first_name` e `last_name`.

    file = square[0].upcase
    # Extrai a primeira letra do `square` (representando a coluna) e converte para maiúsculas.

    rank = square[1].to_i
    # Extrai o segundo caractere do `square` (representando a fileira) e converte para inteiro.

    if valid_square?(rank, file)
      # Verifica se a posição (rank, file) é válida usando o método `valid_square?`.

      "#{nickname} moved to #{square.upcase}"
      # Se a posição for válida, retorna uma mensagem dizendo que o jogador se moveu para a posição especificada.
    else
      "#{nickname} attempted to move to #{square.upcase}, but that is not a valid square"
      # Se a posição não for válida, retorna uma mensagem dizendo que o jogador tentou se mover para uma posição inválida.
    end
  end
end

# Testes dos métodos:
puts Chess.valid_square?(1, 'A') # true
# Verifica se a posição (1, 'A') é válida. Deverá retornar `true`.

puts Chess.nick_name("John", "Doe")  # => "JOOE"
# Gera um apelido a partir de "John Doe", que deverá ser "JOOE".

puts Chess.move_message("John", "Doe", "A1") # => "JOOE moved to A1"
# Gera uma mensagem de movimento para "John Doe" na posição "A1". Deverá retornar "JOOE moved to A1".
