class Interface

  attr_reader :game, :choice

  def initialize(game_klass)
    @game = game_klass
  end

  def start_game
    get_symbol
    play_game
  end

  def play_game
    show_board
    player_move
  end

  private

  def get_symbol
    print "Which player do you want to be? X or O\n"
    @game.set_player_symbol(gets.chomp)
  end

  def show_board
    puts @game.get_current_board
  end

  def player_move
    print "Where do you want to move?"
    @game.set_player_move(gets.chomp)
  end

end
