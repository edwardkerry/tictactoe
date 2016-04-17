  class Game

    attr_reader :player, :board

    def initialize(player_klass, board_klass)
      @player = player_klass
      @board = board_klass
    end

  def set_player_symbol(choice)
    @player.set_symbol(choice)
  end

  def get_current_board
    @board.show_frame
  end

  def set_player_move(coordinates)
    symbol = get_player_symbol
    @board.player_move(coordinates, symbol)
  end

  private

  def get_player_symbol
    @player.symbol
  end

end
