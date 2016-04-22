require_relative 'game'
require_relative 'player'
require_relative 'computer_player'
require_relative 'board'
require_relative 'interface'

class TicTacToe

  def initialize(game = Game, player = Player, board = Board, interface = Interface, computer_player = ComputerPlayer)
    @player = player.new
    @board = board.new
    @computer_player = computer_player.new
    @game = game.new(@player, @board, @computer_player)
    @interface = interface.new(@game)
  end

  def start_game
    @interface.start_game
  end

end

t = TicTacToe.new
t.start_game
