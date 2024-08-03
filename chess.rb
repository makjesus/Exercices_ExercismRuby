module Chess
  # TODO: define the 'RANKS' constant
  # TODO: define the 'FILES' constant
    RANKS = 1..8
    FILES = 'A'..'H'

  "Please implement the Chess.valid_square? method"
  def self.valid_square?(rank,file)
    valid_ranks = (1..8).include?(rank)
    valid_files = ('a'..'h').include?(file)
    valid_ranks && valid_files
  end

  "Please implement the Chess.nick_name metqaure hod"
  def self.nick_name(first_name, last_name)
    nickname = first_name[0,2] + last_name[-2, 2]
  end

  "Please implement the Chess.move_message method"
  def self.move_message(first_name, last_name, square)
    nickname = "#{first_name} #{last_name}"
    valid_files = ('a'..'h').to_a
    valid_ranks = ('1'..'8').to_a
      file = square[0]
      rank = square[1]
      if valid_files.include?(file) && valid_ranks.include?(rank)
      "#{nickname} moved to #{square}"
       else
    "#{nickname} attempt to move to #{square}, but that is not valid square"
    end
  end
end
puts Chess.valid_square?(1, 'A') #true
puts Chess.nick_name("John", "Doe")  # => "JOOE"
Chess.move_message("John", "Doe", "A1") #

