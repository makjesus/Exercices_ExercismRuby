module Chess
  # Define a constante RANKS como um intervalo de 1 a 8, representando as fileiras do tabuleiro de xadrez.
  RANKS = 1..8

  # Define a constante FILES como um intervalo de 'A' a 'H', representando as colunas do tabuleiro de xadrez.
  FILES = 'A'..'H'

  # Define o método de classe 'valid_square?' que verifica se uma posição no tabuleiro é válida.
  def self.valid_square?(rank, file)
    # Verifica se a 'rank' (fileira) está dentro do intervalo válido de 1 a 8.
    valid_ranks = (1..8).include?(rank)
    
    # Verifica se o 'file' (coluna) está dentro do intervalo válido de 'a' a 'h'.
    valid_files = ('a'..'h').include?(file)
    
    # Retorna verdadeiro se ambos os valores (fileira e coluna) forem válidos.
    valid_ranks && valid_files
  end

  # Define o método de classe 'nick_name' que gera um apelido a partir do primeiro e último nome fornecidos.
  def self.nick_name(first_name, last_name)
    # Cria um apelido usando os dois primeiros caracteres do primeiro nome e os dois últimos caracteres do último nome.
    nickname = first_name[0,2] + last_name[-2, 2]
  end

  # Define o método de classe 'move_message' que gera uma mensagem sobre o movimento de uma peça no tabuleiro.
  def self.move_message(first_name, last_name, square)
    # Cria um nome completo usando o primeiro e o último nome fornecidos.
    nickname = "#{first_name} #{last_name}"
    
    # Cria uma lista dos arquivos válidos ('a' a 'h') como um array.
    valid_files = ('a'..'h').to_a
    
    # Cria uma lista das fileiras válidas ('1' a '8') como um array.
    valid_ranks = ('1'..'8').to_a
    
    # Extrai a coluna e a fileira do movimento fornecido.
    file = square[0]
    rank = square[1]
    
    # Verifica se a coluna e a fileira do movimento são válidas.
    if valid_files.include?(file) && valid_ranks.include?(rank)
      # Retorna uma mensagem indicando que o movimento é válido.
      "#{nickname} moved to #{square}"
    else
      # Retorna uma mensagem indicando que o movimento não é válido.
      "#{nickname} attempt to move to #{square}, but that is not valid square"
    end
  end
end

# Testa o método 'valid_square?' com a fileira 1 e a coluna 'A', espera-se que retorne verdadeiro.
puts Chess.valid_square?(1, 'A') # true

# Testa o método 'nick_name' com o primeiro nome "John" e o último nome "Doe", espera-se que retorne "JOOE".
puts Chess.nick_name("John", "Doe")  # => "JOOE"

# Testa o método 'move_message' com o primeiro nome "John", o último nome "Doe" e o movimento "A1", espera-se que retorne uma mensagem sobre o movimento.
puts Chess.move_message("John", "Doe", "A1") #
