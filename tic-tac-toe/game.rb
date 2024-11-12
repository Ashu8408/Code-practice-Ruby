class TicTacToe
  attr_reader :players, :board, :current_player

  def initialize
    
    # @{variable-name}  -  instance variable declaration

    @board = [      
      nil,nil,nil,
      nil,nil,nil,
      nil,nil,nil,
    ]
    @players = []
  end


  def start
    if players.length != 2
      raise StandardError, "Minimum Two players requierd to play the game"
    end
  
      #   research about "StandardError"

      #   the game goes on until someone wins, or the match is draw

    @current_player = players.first

    while !(win? || draw?) do

      render
      get_input
      switch_player
      
    end

    if(winner = win?)
      puts "Congratulations, #{winner.name}! won the game"
      # puts board
    else
      puts "It was a draw"
    end

  end

  def render
    puts
    puts " #{board[0]&.mark || " "} | #{board[1]&.mark || " "} | #{board[2]&.mark || " "}"
    puts "-----------"
    puts " #{board[3]&.mark || " "} | #{board[4]&.mark || " "} | #{board[5]&.mark || " "}"
    puts "-----------"
    puts " #{board[6]&.mark || " "} | #{board[7]&.mark || " "} | #{board[8]&.mark || " "}"
    puts 
  end

  def get_input

    #condition to prevent owerwrite
    loop do
      puts "#{@current_player.name} mark your turn from [1-9]"
      location = gets.chomp.to_i

      

      if (board[location-1] == nil && location.between?(1, 9))
        board[location-1] = current_player
        break
      else
        puts "error!! choose a valid spot"
      end    
    end
  end

  def switch_player
    @current_player = (current_player == players.first) ? players.last : players.first
  end

  


  def win?
    #Horizontals
    row = [board[0],board[1],board[2]].compact
    return row.first if row.length ==3 && row.all? { |r| r == row.last}

    row = [board[3],board[4],board[5]].compact
    return row.first if row.length ==3 && row.all? { |r| r == row.last}

    row = [board[6],board[7],board[8]].compact
    return row.first if row.length ==3 && row.all? { |r| r == row.last}

    #Verticals
    row = [board[0],board[3],board[6]].compact
    return row.first if row.length ==3 && row.all? { |r| r == row.last}

    row = [board[1],board[4],board[7]].compact
    return row.first if row.length ==3 && row.all? { |r| r == row.last}

    row = [board[2],board[5],board[8]].compact
    return row.first if row.length ==3 && row.all? { |r| r == row.last}

    #Diagonal
    row = [board[0],board[4],board[8]].compact
    return row.first if row.length ==3 && row.all? { |r| r == row.last}

    row = [board[2],board[4],board[6]].compact
    return row.first if row.length ==3 && row.all? { |r| r == row.last}

    
  end

  def draw?
    board.none? (nil) && !win?
  end

  
  def add_player(name = nil)
    mark = players.empty? ? "X" : "O"
    
    if name == nil
    puts "What's your name?"
    name = gets.chomp
    # chomp gets rid of any new line
    # When the user enters "Alice" and presses Enter, gets captures "Alice\n".
    # The 'chomp' method then removes \n, so name becomes "Alice".
    end

    players << Player.new(name, mark)
  end

end

class Player
  attr_reader :name, :mark

  def initialize(name, mark)
    @name, @mark = name, mark
  end
end



game = TicTacToe.new


game.add_player("A")
game.add_player("B")

game.start

