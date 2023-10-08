class Player
  def initialize(name, sign)
    @name = name
    @sign = sign
  end
end

class Board
  def initialize
    @pos1 = 1
    @pos2 = 2
    @pos3 = 3
    @pos4 = 4
    @pos5 = 5
    @pos6 = 6
    @pos7 = 7
    @pos8 = 8
    @pos9 = 9
    update_board('init')
  end

  def update_board(field_pos)
    if field_pos == 'init'

    puts "#{@pos1} | #{@pos2} | #{@pos3}
_ _ _ _ _

#{@pos4} | #{@pos5} | #{@pos6}
_ _ _ _ _

#{@pos7} | #{@pos8} | #{@pos9}"
    end
  end

  def get_field_pos
    puts "Select a position (1-9): "
    field_pos = gets.chomp
    update_board(field_pos)
  end
end

# get user input for names
puts "Please enter the name of the 1st player: "
name1 = gets.chomp
puts "Please enter the name of the 2nd player: "
name2 = gets.chomp

# generate players
player1 = Player.new(name1, 'X')
player2 = Player.new(name2, 'O')

# display initial board with field positions
board = Board.new

# get user input for field position
#board.get_field_pos()

# p board = Board.new
