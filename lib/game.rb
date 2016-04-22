  class Game

    attr_reader :player, :board, :computer

    def initialize(player_klass, board_klass, computer_klass)
      @player = player_klass
      @board = board_klass
      @computer = computer_klass
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

  private

  def set_computer_move
    @board.computer_move(get_computer_coords, get_computer_symbol)
  end

  def get_player_symbol
    @player.symbol
  end

  def get_computer_symbol
    @computer.symbol
  end

  def set_computer_symbol(choice)
    @computer.set_symbol(choice)
  end

  def get_computer_coords
    @computer.make_move(@board.grid)
  end

end
