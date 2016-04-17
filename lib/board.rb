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
    1   | #{@grid[0][0]} | #{@grid[0][1]} | #{@grid[1][1]} |
        +---+---+---+
    2   | #{@grid[1][0]} | #{@grid[1][1]} | #{@grid[1][2]} |
        +---+---+---+
    3   | #{@grid[2][0]} | #{@grid[2][1]} | #{@grid[2][2]} |
        +---+---+---+"""
  end

end
