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
      set_symbols(choice)
      play_game
    else
      puts "Please choose X or O"
      get_symbol
    end
  end

  def set_symbols(choice)
    @game.set_player_symbol(choice)
    @game.set_computer_symbol(choice)
  end

  def show_board
    puts @game.get_current_board
  end

  def player_move
    puts "Where do you want to move?"
    coords = parse_coords(gets.chomp.upcase)
    check_valid(coords)
  end

  def parse_coords(coords)
    coords = coords.delete(" ")
    /\d/.match(coords[0]) ? coords[1]+coords[0] : coords[0]+coords[1]
  end

  def check_valid(coords)
    letters = ['A','B','C']
    numbers = ['1','2','3']
    if letters.include?(coords[0]) && numbers.include?(coords[1])
      @game.set_moves(coords)
    else
      puts "Please choose valid coordinates"
      player_move
    end
  end

  def check_winner
    @game.winning_move? ? end_game : play_game
  end

  def end_game
    show_board
    puts "#{@game.winner} has won!"
  end

end
