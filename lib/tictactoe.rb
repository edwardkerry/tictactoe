require_relative 'game'
require_relative 'player'
require_relative 'board'
require_relative 'interface'

class TicTacToe

  def initialize(game = Game, player = Player, board = Board, interface = Interface)
    @player = player.new
    @board = board.new
    @game = game.new(@player, @board)
    @interface = interface.new(@game)
  end

  def start_game
    @interface.start_game
  end

end

t = TicTacToe.new
t.start_game
