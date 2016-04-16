class TicTacToe

  attr_reader :game, :choice

  def initialize(game_klass, player_klass)
    @game = game_klass.new(player_klass)
  end

  def get_symbol
    print "Which player do you want to be? X or O\n"
  end

  def set_symbol
    @game.set_player_symbol(gets.chomp)
  end

end
