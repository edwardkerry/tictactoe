require 'board'

describe Board do

  subject(:board) { described_class.new }

  describe "the playing grid" do
    it "is a 3x3 2d array" do
      expect(board.grid).to eq ([[][][],[][][],[][][]])
    end
  end

end
