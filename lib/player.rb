class Player

  attr_reader :symbol

  def initialize
    @symbol = nil
  end

  def set_symbol(choice)
    @symbol = choice
  end

end
