class ComputerPlayer

  attr_reader :symbol

  def initialize
    @symbol = nil
  end

  def set_symbol(symbol)
    options = {'X': 'O',
               'O': 'X'}
    @symbol = options[symbol.to_sym]
  end

end
