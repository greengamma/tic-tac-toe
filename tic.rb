class Player
  def initialize(name, num)
    @name = name
    @num = num
  end


end

class Board
  def initialize
    puts '1 | 2 | 3
_ _ _ _ _

4 | 5 | 6
_ _ _ _ _

7 | 8 | 9'
  end

  def update(field_pos)

  end
end

# get user input for names
puts "Please enter the name of the 1st player: "
name1 = gets.chomp
puts "Please enter the name of the 2nd player: "
name2 = gets.chomp

# generate players
player1 = Player.new(name1, 1)
player2 = Player.new(name2, 2)

# p board = Board.new
