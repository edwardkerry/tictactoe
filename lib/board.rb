class Board

  attr_reader :grid

  def initialize
    @grid = [ " "," "," ",
              " "," "," ",
              " "," "," "]
  end

  def show_frame
    """
          A   B   C
        +---+---+---+
    1   | #{@grid[0]} | #{@grid[1]} | #{@grid[2]} |
        +---+---+---+
    2   | #{@grid[3]} | #{@grid[4]} | #{@grid[5]} |
        +---+---+---+
    3   | #{@grid[6]} | #{@grid[7]} | #{@grid[8]} |
        +---+---+---+"""
  end

  def player_move(coords, symbol)
    cell = get_cell(coords)
    set_location(cell, symbol)
  end

  def computer_move(cell, symbol)
    set_location(cell, symbol)
  end

  private

  def get_cell(coords)
    location = {'A1': 0,
                'B1': 1,
                'C1': 2,
                'A2': 3,
                'B2': 4,
                'C2': 5,
                'A3': 6,
                'B3': 7,
                'C3': 8 }
    location[coords.to_sym]
  end

  def set_location(cell, symbol)
    @grid[cell] = symbol
  end

end
