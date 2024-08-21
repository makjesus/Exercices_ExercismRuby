module Blackjack
  # Define um hash que associa nomes de cartas aos seus valores correspondentes
  CARD_VALUES = {
    "ace" => 11, "two" => 2, "three" => 3, "four" => 4, "five" => 5,
    "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10,
    "jack" => 10, "queen" => 10, "king" => 10
  }

  # Método de classe que retorna o valor numérico de uma carta
  def self.parse_card(card)
    CARD_VALUES.fetch(card, 0) # Usa fetch para buscar o valor da carta no hash. Retorna 0 se a carta não for encontrada.
  end

  # Método de classe que determina a faixa de pontuação com base em duas cartas
  def self.card_range(card1, card2)
    score = CARD_VALUES[card1] + CARD_VALUES[card2] # Soma os valores das duas cartas

    # Avalia a faixa de pontuação e retorna uma string correspondente
    case score
    when 4..11
      "low" # Pontuação baixa
    when 12..16
      "mid" # Pontuação média
    when 17..20
      "high" # Pontuação alta
    when 21
      "blackjack" # Pontuação exata de 21 é um Blackjack
    else
      "invalid score" # Qualquer outra pontuação é inválida
    end
  end

  # Método de classe que decide a ação a ser tomada na primeira jogada com base nas cartas do jogador e do dealer
  def self.first_turn(card1, card2, dealer_card)
    player_score = CARD_VALUES[card1] + CARD_VALUES[card2] # Calcula a pontuação do jogador
    dealer_value = CARD_VALUES[dealer_card] # Obtém o valor da carta do dealer

    # Lógica de decisão baseada na pontuação do jogador e na carta do dealer
    if card1 == "ace" && card2 == "ace"
      "P" # Se o jogador tem dois ases, sempre dobra a aposta
    elsif player_score == 21
      dealer_value < 10 ? "W" : "S" # Se o jogador tem 21, ganha se a carta do dealer for menor que 10, caso contrário, fica (stand)
    elsif player_score >= 17 && player_score <= 20
      "S" # Se o jogador tem uma pontuação entre 17 e 20, deve ficar (stand)
    elsif player_score >= 12 && player_score <= 16
      dealer_value >= 7 ? "H" : "S" # Se o jogador tem entre 12 e 16, deve pedir (hit) se a carta do dealer for 7 ou mais, caso contrário, deve ficar (stand)
    else
      "H" # Se a pontuação do jogador for menor que 12, deve pedir (hit)
    end
  end
end

# Testes para verificar o funcionamento dos métodos
puts Blackjack.parse_card("ace")               # => 11
puts Blackjack.card_range("ten", "king")       # => "high"
puts Blackjack.first_turn("ace", "ace", "two") # => "P"
