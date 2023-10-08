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
    if field_pos == 'init' # display board on start
      display_board
    elsif # number already taken?

    else
      case field_pos # assign value if position is valid, i.e. not occupied yet
      when 1
        @pos1 = sign
      when 2
        @pos2 = sign
      when 3
        @pos3 = sign
      when 4
        @pos4 = sign
      when 5
        @pos5 = sign
      when 6
        @pos6 = sign
      when 7
        @pos7 = sign
      when 8
        @pos8 = sign
      when 9
        @pos9 = sign
      else
        "Invalid number. Please enter one of the remaining numbers!"
      end

    end
  end

    def display_board
      puts "#{@pos1} | #{@pos2} | #{@pos3}
_ _ _ _ _

#{@pos4} | #{@pos5} | #{@pos6}
_ _ _ _ _

#{@pos7} | #{@pos8} | #{@pos9}"
    end

  def get_field_pos
    puts "Select a position (1-9): "
    field_pos = (gets.chomp).to_i
    update_board(field_pos)
  end
end

# get user input for names
puts "Please enter the name of the 1st player (X): "
name1 = gets.chomp
puts "Please enter the name of the 2nd player (O): "
name2 = gets.chomp

# generate players
player1 = Player.new(name1, 'X')
player2 = Player.new(name2, 'O')

# display initial board with field positions
board = Board.new

# get user input for field position
board.get_field_pos

# p board = Board.new
