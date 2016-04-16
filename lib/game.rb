class Game

  attr_reader :player

  def initialize(player_klass)
    @player = player_klass.new
  end

  def set_player_symbol(choice)
    @player.set_symbol(choice)
  end


end
