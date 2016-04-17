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
      expect{board.frame}.to output("""
          A   B   C
        +---+---+---+
    1   |   |   |   |
        +---+---+---+
    2   |   |   |   |
        +---+---+---+
    3   |   |   |   |
        +---+---+---+\n""").to_stdout

    end
  end

end
