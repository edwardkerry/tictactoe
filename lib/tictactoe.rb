require_relative 'game'
require_relative 'player'
require_relative 'computer_player'
require_relative 'board'
require_relative 'interface'

class TicTacToe

  def initialize(player = Player, computer_player = ComputerPlayer, board = Board, game = Game, interface = Interface)
    @player = player.new
    @computer_player = computer_player.new
    @board = board.new
    @game = game.new(@player,@computer_player, @board)
    @interface = interface.new(@game)
  end

  def start_game
    @interface.start_game
  end

end

t = TicTacToe.new
t.start_game
