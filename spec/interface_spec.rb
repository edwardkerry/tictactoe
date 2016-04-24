require 'interface'

describe Interface do

  let(:game_klass) { double(set_player_symbol: nil, get_current_board: nil, set_player_move: nil, winning_move?: false, winner: 'X') }

  subject(:interface) { described_class.new(game_klass) }

  before do
    allow(interface.game).to receive(:winning_move?).and_return(true)
  end

  context "When starting a new game" do

    before do
    end

    describe "#start_game" do
      it "collects user symbol for Game" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return 'x'
        expect(interface.game).to receive(:set_player_symbol).with('X')
        interface.start_game
      end
    end
  end

  context "When playing a game" do
    before do
      allow_any_instance_of(Kernel).to receive(:gets).and_return 'A1'
    end

    describe "#play_game" do
      it "requests the current board from Game" do
        expect(interface.game).to receive(:get_current_board)
        interface.play_game
      end
      it "collects user move for Game" do
        expect(interface.game).to receive(:set_player_move).with('A1')
        interface.play_game
      end
    end
    it "announces a winner when the game is over" do
      allow(interface.game).to receive(:winner).and_return('X')
      expect{interface.play_game}.
      to output("\nWhere do you want to move?\n\nX has won!\n").to_stdout
    end
  end

end
