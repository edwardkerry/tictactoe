class Interface

  attr_reader :game, :choice

  def initialize(game_klass)
    @game = game_klass
  end

  def start_game
    get_symbol
  end

  def play_game
    show_board
    player_move
    check_winner
  end

  private

  def get_symbol
    puts "Which player do you want to be? X or O\n"
    choice = gets.chomp.upcase
    check_symbol(choice)
  end

  def check_symbol(choice)
    if choice == 'X' || choice == 'O'
      @game.set_player_symbol(choice)
      play_game
    else
      puts "Please choose X or O"
      get_symbol
    end
  end

  def show_board
    puts @game.get_current_board
  end

  def player_move
    puts "Where do you want to move?"
    @game.set_player_move(gets.chomp.upcase)
  end

  def check_winner
    @game.winning_move? ? end_game : play_game
  end

  def end_game
    show_board
    puts "#{@game.winner} has won!"
  end

end
