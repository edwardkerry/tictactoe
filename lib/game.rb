  class Game

    attr_reader :player, :board, :computer, :winning_rows, :winning_columns, :winning_diagonals, :winner

    def initialize(player_klass, board_klass, computer_klass)
      @player = player_klass
      @board = board_klass
      @computer = computer_klass
      @winning_rows = [[0,1,2],
                       [3,4,5],
                       [6,7,8]]
      @winning_columns = [[0,3,6],
                         [1,4,7],
                         [2,5,8]]
      @winning_diagonals = [[0,4,8],
                           [2,4,6]]
      @winner = nil
    end

  def set_player_symbol(choice)
    @player.set_symbol(choice)
  end

  def set_computer_symbol(choice)
    @computer.set_symbol(choice)
  end

  def get_current_board
    @board.show_frame
  end

  def set_moves(coordinates)
    @board.player_move(coordinates, get_player_symbol)
    set_computer_move
  end

  def winning_move?
    return true if check_winner(@winning_rows) == true
    return true if check_winner(@winning_columns) == true
    return true if check_winner(@winning_diagonals) == true
    return false
  end

  private

  def get_player_symbol
    @player.symbol
  end

  def get_computer_symbol
    @computer.symbol
  end

  def set_computer_move
    @board.computer_move(get_computer_coords, get_computer_symbol)
  end

  def get_computer_coords
    @computer.make_move(@board.grid)
  end

  def check_winner(winners)
    winners.each do |line|
      if @board.grid[line[0]] != " " &&
        @board.grid[line[0]] == @board.grid[line[1]] &&
        @board.grid[line[1]] == @board.grid[line[2]]
        then
        @board.grid[line[0]] == get_player_symbol ?  @winner = get_player_symbol : @winner = get_computer_symbol
        return true
      end
    end
  end

end
