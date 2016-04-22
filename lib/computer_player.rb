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
      options = []
      grid.each_with_index do |row, row_index|
        row.each_with_index do |cell, cell_index|
          options << [row_index, cell_index] if cell =~ /\s/
        end
      end
      options
    end

end
