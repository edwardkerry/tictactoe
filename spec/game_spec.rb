require 'game'

describe Game do

  let(:player_klass) { double( set_symbol: true, symbol: 'X') }
  let(:board_klass) { double( show_frame: true, player_move: true, computer_move: true, grid: true) }
  let(:computer_klass) { double( set_symbol: true, symbol: 'O', make_move: true) }

  subject(:game) { described_class.new(player_klass, board_klass, computer_klass) }

  context "When creating a new game" do
    describe "the selected player symbol" do
      it "is passed to the player class" do
        expect(game.player).to receive(:set_symbol).with('X')
        game.set_player_symbol('X')
      end
    end
    describe "the selected player symbol" do
      it "is passed to the computer class" do
        expect(game.computer).to receive(:set_symbol).with('X')
        game.set_computer_symbol('X')
      end
    end

    describe "the winning moves are stored as" do
      it "rows" do
        expect(game.winning_rows).
        to eq ([[0,1,2],[3,4,5],[6,7,8]])
      end
      it "columns" do
        expect(game.winning_columns).
        to eq ([[0,3,6],[1,4,7],[2,5,8]])
      end
      it "diagonals" do
        expect(game.winning_diagonals).
        to eq ([[0,4,8],[2,4,6]])
      end
    end
  end

  describe "#get_current_board" do
    it "calls on the Board class"do
      expect(game.board).to receive(:show_frame)
      game.get_current_board
    end
  end

  describe "#set_player_move" do
    it "passes player move to Board class" do
      expect(game.board).to receive(:player_move).with('A1', 'X')
      game.set_moves('A1')
    end
    it "passes computer move to Board class" do
      expect(game.computer).to receive(:make_move)
      game.set_moves('A1')
    end
  end

  describe "#winning_move?" do
    it "knows when a grid has no winners" do
      allow(game.board).to receive(:grid).and_return([" "," "," "," "," "," "," "," "," "])
      expect(game.winning_move?).to eq false
    end
    it "knows when rows are winners" do
      allow(game.board).to receive(:grid).and_return([" "," "," "," "," "," ","X","X","X"])
      expect(game.winning_move?).to eq true
    end
    it "knows when columns are winners" do
      allow(game.board).to receive(:grid).and_return(["O"," ","X"," "," ","X"," "," ","X"])
      expect(game.winning_move?).to eq true
    end
    it "knows when diagnonals are winners" do
      allow(game.board).to receive(:grid).and_return(["X"," "," "," ","X"," "," "," ","X"])
      expect(game.winning_move?).to eq true
    end
  end

  describe "@winner" do
    it "knows which symbol has won" do
      allow(game.board).to receive(:grid).and_return(["X"," "," "," ","X"," "," "," ","X"])
      game.winning_move?
      expect(game.winner).to eq game.player.symbol
    end
  end

end
