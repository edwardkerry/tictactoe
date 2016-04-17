require 'tictactoe'

describe TicTacToe do

  let(:game_klass) { double(new: nil, set_player_symbol: true) }
  let(:player_klass) { double }
  subject(:tictactoe) { described_class.new(game_klass, player_klass) }

  context "When starting a new game" do

    before do
      $stdin = StringIO.new("X\n")
    end
    after do
      $stdin = STDIN
    end

    describe "submitting user symbol" do
      it "asks user to input their chosen symbol" do
        expect{tictactoe.get_symbol}.
        to output("Which player do you want to be? X or O\n").to_stdout
      end
      it "passes the input symbol to the game class" do
        expect(tictactoe.game).to receive(:set_player_symbol).with ('X')
        tictactoe.get_symbol
        tictactoe.set_symbol
      end
    end
  end

end
