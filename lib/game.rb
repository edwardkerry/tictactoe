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
    @board.frame
  end

end
