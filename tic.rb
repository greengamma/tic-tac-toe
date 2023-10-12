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
    @pos_hash = {}
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
        @pos_hash[1] = sign
      when 2
        @pos2 = sign
        @taken_arr.push(2)
        @pos_hash[2] = sign
      when 3
        @pos3 = sign
        @taken_arr.push(3)
        @pos_hash[3] = sign
      when 4
        @pos4 = sign
        @taken_arr.push(4)
        @pos_hash[4] = sign
      when 5
        @pos5 = sign
        @taken_arr.push(5)
        @pos_hash[5] = sign
      when 6
        @pos6 = sign
        @taken_arr.push(6)
        @pos_hash[6] = sign
      when 7
        @pos7 = sign
        @taken_arr.push(7)
        @pos_hash[7] = sign
      when 8
        @pos8 = sign
        @taken_arr.push(8)
        @pos_hash[8] = sign
      when 9
        @pos9 = sign
        @taken_arr.push(9)
        @pos_hash[9] = sign
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
    if @taken_arr.length >= 5
      state, sign = success?
      if state
        puts "Player #{sign} has won!"
      end
    elsif @taken_arr.length == 9
      puts "Nobody wins!"
      return true
    end
  end

  def success?
    # check if player has won
    sign_arr = ['X', 'O']

    sign_arr.each do |sign|
      puts sign
      if
        # horizontal
        @pos_hash.values_at(1, 2, 3).all?(sign) ||
        @pos_hash.values_at(4, 5, 6).all?(sign) ||
        @pos_hash.values_at(7, 8, 9).all?(sign) ||

        # vertical
        @pos_hash.values_at(1, 4, 7).all?(sign) ||
        @pos_hash.values_at(2, 5, 8).all?(sign) ||
        @pos_hash.values_at(3, 6, 9).all?(sign) ||

        # diagonal
        @pos_hash.values_at(1, 5, 9).all?(sign) ||
        @pos_hash.values_at(7, 5, 3).all?(sign)

        return true, sign
      end
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
