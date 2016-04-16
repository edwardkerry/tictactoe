require 'game'

describe Game do

  let(:game) { described_class.new }

  context "When creating a new game" do
    describe "the selected player symbol" do
      it "is passed to the player class" do
        game.player_choice('X')
        expect(Player).to receive(:new)
      end
    end
  end

end
