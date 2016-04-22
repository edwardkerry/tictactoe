  class Game

    attr_reader :player, :board, :computer, :winning_rows, :winning_columns, :winning_diagonals

    def initialize(player_klass, board_klass, computer_klass)
      @player = player_klass
      @board = board_klass
      @computer = computer_klass
      @winning_rows = [[0][0],[0][1],[0][2]],
                      [[1][0],[1][1],[1][2]],
                      [[2][0],[2][1],[2][2]]
      @winning_columns = [[0][0],[1][0],[2][0]],
                         [[0][1],[1][1],[2][1]],
                         [[0][2],[1][2],[2][2]]
      @winning_diagonals =  [[0][0],[1][1],[2][2]],
                            [[0][2],[1][1],[2][0]]
    end

  def set_player_symbol(choice)
    @player.set_symbol(choice)
    set_computer_symbol(choice)
  end

  def get_current_board
    @board.show_frame
  end

  def set_player_move(coordinates)
    @board.player_move(coordinates, get_player_symbol)
    set_computer_move
  end

  def winning_move?
    check_complete(@winning_rows)
  end

  private

  def get_player_symbol
    @player.symbol
  end

  def set_computer_symbol(choice)
    @computer.set_symbol(choice)
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

  def check_complete(options)
    puts options
    options.all? {|x| x == options[0]}
  end

end
