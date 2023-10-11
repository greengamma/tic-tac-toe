class Player
  attr_reader :name, :sign, :num

  def initialize(name, sign, num)
    @name = name
    @sign = sign
    @num = num
  end
end

class Board

  def initialize
    @taken_arr = [] # collect the chosen field positions
    @pos1 = 1
    @pos2 = 2
    @pos3 = 3
    @pos4 = 4
    @pos5 = 5
    @pos6 = 6
    @pos7 = 7
    @pos8 = 8
    @pos9 = 9
    update_board('init', '_')
  end

  def update_board(field_pos, sign)
    if @taken_arr.include? field_pos # position already taken?
      puts "Invalid number. Please enter one of the remaining numbers!"
      display_board
      return false
    else
      case field_pos # assign value if position is available, i.e. not occupied yet by another player
      when 1
        @pos1 = sign
        @taken_arr.push(1)
      when 2
        @pos2 = sign
        @taken_arr.push(2)
      when 3
        @pos3 = sign
        @taken_arr.push(3)
      when 4
        @pos4 = sign
        @taken_arr.push(4)
      when 5
        @pos5 = sign
        @taken_arr.push(5)
      when 6
        @pos6 = sign
        @taken_arr.push(6)
      when 7
        @pos7 = sign
        @taken_arr.push(7)
      when 8
        @pos8 = sign
        @taken_arr.push(8)
      when 9
        @pos9 = sign
        @taken_arr.push(9)
      end
    end
    display_board
    return true
  end

    def display_board
      puts "#{@pos1} | #{@pos2} | #{@pos3}
_ _ _ _ _

#{@pos4} | #{@pos5} | #{@pos6}
_ _ _ _ _

#{@pos7} | #{@pos8} | #{@pos9}"
    end

  def get_field_pos(play_name, sign)
    puts "#{play_name}, select a position (1-9): "
    field_pos = (gets.chomp).to_i
    return update_board(field_pos, sign)
  end

  def game_over?
    if @taken_arr.length == 9
      return true
    end
  end
end


# get user input for names
puts "Please enter the name of the 1st player (X): "
name1 = gets.chomp
puts "Please enter the name of the 2nd player (O): "
name2 = gets.chomp

# generate players
player1 = Player.new(name1, 'X', 1)
player2 = Player.new(name2, 'O', 2)

# display initial board with field positions
board = Board.new

# Loop until game has finished
# get user input for field position
until board.game_over?
  until board.get_field_pos(player1.name, player1.sign)
  end
  if board.game_over?
    break
  end
  until board.get_field_pos(player2.name, player2.sign)
  end
  if board.game_over?
    break
  end
end
