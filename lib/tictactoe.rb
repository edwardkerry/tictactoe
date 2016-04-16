class TicTacToe

  attr_reader :game

  def initialize(game_klass)
    @game = game_klass.new
  end

  def run
    print "Which player do you want to be? X or O\n"
    choice = gets.chomp
    @game.set_player_symbol(choice)
  end

end
