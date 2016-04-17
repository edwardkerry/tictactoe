class Board

  attr_reader :grid

  def initialize
    @grid = [ [" "," "," "],
              [" "," "," "],
              [" "," "," "] ]
  end

  def frame
    puts"""
          A   B   C
        +---+---+---+
    1   | #{@grid[0][0]} | #{@grid[0][1]} | #{@grid[0][2]} |
        +---+---+---+
    2   | #{@grid[1][0]} | #{@grid[1][1]} | #{@grid[1][2]} |
        +---+---+---+
    3   | #{@grid[2][0]} | #{@grid[2][1]} | #{@grid[2][2]} |
        +---+---+---+"""
  end

  def player_move(coords, symbol)
    parse_coords(coords, symbol)
  end

  private

  def parse_coords(coords, symbol)
    coords = coords.split("")
    x = get_x(coords[0])
    y = get_y(coords[1])
    set_location(x,y, symbol)
  end

  def get_x(x)
    location = {'A': 0,
                'B': 1,
                'C': 2}
    location[x.to_sym]
  end

  def get_y(y)
    location = {'1': 0,
                '2': 1,
                '3': 2}
    location[y.to_sym]
  end

  def set_location(x,y,symbol)
    @grid[x][y] = symbol
  end

end
