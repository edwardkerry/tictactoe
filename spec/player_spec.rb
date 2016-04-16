require 'player'

describe Player do

  subject(:player) { described_class.new }

  describe "The chosen symbol" do
    it "is recorded by the Player" do
      player.set_symbol('X')
      expect(player.symbol).to eq ('X')
    end
    it "is made upper-case" do
      player.set_symbol('o')
      expect(player.symbol).to eq ('O')
    end
  end
  
end
