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

  def make_move(grid)
    find_empty_cells(grid).sample
  end

  private

  def find_empty_cells(grid)
    empties = []
    grid.each_with_index do |cell, index|
      empties << index if cell =~ /\s/
    end
    empties
  end

end
