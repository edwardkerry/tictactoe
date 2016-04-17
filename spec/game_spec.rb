require 'game'

describe Game do

  let(:player_klass) { double( set_symbol: true, symbol: 'X') }
  let(:board_klass) { double( show_frame: true, player_move: true) }

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
      expect(game.board).to receive(:show_frame)
      game.get_current_board
    end
  end

  describe"#set_player_move" do
    it"passes player move to Board class" do
      expect(game.board).to receive(:player_move).with('A1', 'X')
      game.set_player_move('A1')
    end
  end

end
