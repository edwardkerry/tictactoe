class Board

  attr_reader :grid

  def initialize
    @grid = [ [" "," "," "],
              [" "," "," "],
              [" "," "," "] ]
  end

  def show_frame
    puts """
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
    coords = parse_coords(coords)
    num = get_num(coords[1])
    let = get_let(coords[0])
    set_location(num, let, symbol)
  end

  private

  def parse_coords(coords)
    coords = coords.split("")
  end

  def get_num(num)
    location = {'1': 0,
                '2': 1,
                '3': 2}
    location[num.to_sym]
  end

  def get_let(let)
    location = {'A': 0,
                'B': 1,
                'C': 2}
    location[let.to_sym]
  end

  def set_location(num, let, symbol)
    @grid[num][let] = symbol
  end

end
