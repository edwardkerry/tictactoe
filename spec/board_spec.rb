require 'board'

describe Board do

  subject(:board) { described_class.new }

  describe "the playing grid" do
    it "is a 3x3 2d array" do
      expect(board.grid).to eq([ [" "," "," "],
                                 [" "," "," "],
                                 [" "," "," "] ])
    end
  end

  describe "the frame" do
    it "has co-ordinates, rows and columns" do
      expect(board.show_frame).to eq("""
          A   B   C
        +---+---+---+
    1   |   |   |   |
        +---+---+---+
    2   |   |   |   |
        +---+---+---+
    3   |   |   |   |
        +---+---+---+""")
    end
  end

  describe"#add_player_move" do
    it"updates the grid with player symbol" do
      board.player_move('A1', 'X')
      expect(board.grid[0][0]).to eq ('X')
    end
  end

end
