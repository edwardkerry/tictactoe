require 'game'

describe Game do

  let(:player_klass) { double( set_symbol: true) }
  let(:board_klass) { double( frame: true) }

  subject(:game) { described_class.new(player_klass, board_klass) }

  context "When creating a new game" do
    describe "the selected player symbol" do
      it "is passed to the player class" do
        expect(game.player).to receive(:set_symbol)
        game.set_player_symbol('X')
      end
    end
  end

  describe"#get_current_board" do
    it"calls on the Board class"do
      expect(game.board).to receive(:frame)
      game.get_current_board
    end
  end

end
