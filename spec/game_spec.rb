require 'game'

describe Game do

  let(:player_klass) { double( new: nil, set_symbol: true) }

  subject(:game) { described_class.new(player_klass) }

  context "When creating a new game" do
    describe "the selected player symbol" do
      it "is passed to the player class" do
        expect(game.player).to receive(:set_symbol)
        game.set_player_symbol('X')
      end
    end
  end

end
